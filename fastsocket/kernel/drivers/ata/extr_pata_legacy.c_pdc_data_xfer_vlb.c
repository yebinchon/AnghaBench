
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int data_addr; int nsect_addr; } ;
struct ata_port {int pflags; TYPE_2__ ioaddr; } ;
struct ata_device {int id; TYPE_1__* link; } ;
typedef unsigned char __le32 ;
struct TYPE_3__ {struct ata_port* ap; } ;


 int ATA_PFLAG_PIO32 ;
 int READ ;
 scalar_t__ ata_id_has_dword_io (int ) ;
 unsigned int ata_sff_data_xfer_noirq (struct ata_device*,unsigned char*,unsigned int,int) ;
 unsigned char cpu_to_le32 (int ) ;
 int ioread32 (int ) ;
 int ioread32_rep (int ,unsigned char*,unsigned int) ;
 int ioread8 (int ) ;
 int iowrite32 (int ,int ) ;
 int iowrite32_rep (int ,unsigned char*,unsigned int) ;
 int le32_to_cpu (unsigned char) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int pdc_data_xfer_vlb(struct ata_device *dev,
   unsigned char *buf, unsigned int buflen, int rw)
{
 int slop = buflen & 3;
 struct ata_port *ap = dev->link->ap;


 if (ata_id_has_dword_io(dev->id) && (slop == 0 || slop == 3)
     && (ap->pflags & ATA_PFLAG_PIO32)) {
  unsigned long flags;

  local_irq_save(flags);


  ioread8(ap->ioaddr.nsect_addr);
  ioread8(ap->ioaddr.nsect_addr);
  ioread8(ap->ioaddr.nsect_addr);


  if (rw == READ)
   ioread32_rep(ap->ioaddr.data_addr, buf, buflen >> 2);
  else
   iowrite32_rep(ap->ioaddr.data_addr, buf, buflen >> 2);

  if (unlikely(slop)) {
   __le32 pad;
   if (rw == READ) {
    pad = cpu_to_le32(ioread32(ap->ioaddr.data_addr));
    memcpy(buf + buflen - slop, &pad, slop);
   } else {
    memcpy(&pad, buf + buflen - slop, slop);
    iowrite32(le32_to_cpu(pad), ap->ioaddr.data_addr);
   }
   buflen += 4 - slop;
  }
  local_irq_restore(flags);
 } else
  buflen = ata_sff_data_xfer_noirq(dev, buf, buflen, rw);

 return buflen;
}
