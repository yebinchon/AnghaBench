
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ata_device {TYPE_3__* link; } ;
struct at91_ide_info {int cs; } ;
struct TYPE_6__ {TYPE_2__* ap; } ;
struct TYPE_5__ {TYPE_1__* host; } ;
struct TYPE_4__ {struct at91_ide_info* private_data; } ;


 unsigned int AT91_SMC_DBW ;
 unsigned int AT91_SMC_DBW_16 ;
 unsigned int AT91_SMC_DBW_8 ;
 int AT91_SMC_MODE (int ) ;
 unsigned int at91_sys_read (int ) ;
 int at91_sys_write (int ,unsigned int) ;
 unsigned int ata_sff_data_xfer (struct ata_device*,unsigned char*,unsigned int,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static unsigned int pata_at91_data_xfer_noirq(struct ata_device *dev,
  unsigned char *buf, unsigned int buflen, int rw)
{
 struct at91_ide_info *info = dev->link->ap->host->private_data;
 unsigned int consumed;
 unsigned long flags;
 unsigned int mode;

 local_irq_save(flags);
 mode = at91_sys_read(AT91_SMC_MODE(info->cs));


 at91_sys_write(AT91_SMC_MODE(info->cs),
   (mode & ~AT91_SMC_DBW) | AT91_SMC_DBW_16);

 consumed = ata_sff_data_xfer(dev, buf, buflen, rw);


 at91_sys_write(AT91_SMC_MODE(info->cs),
   (mode & ~AT91_SMC_DBW) | AT91_SMC_DBW_8);

 local_irq_restore(flags);
 return consumed;
}
