
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym53c500_data {scalar_t__ fast_pio; } ;
struct Scsi_Host {int irq; int io_port; scalar_t__ hostdata; } ;
typedef int info_msg ;


 int DEB (int ) ;
 int printk (char*) ;
 int snprintf (char*,int,char*,int ,int ,char*) ;

__attribute__((used)) static const char*
SYM53C500_info(struct Scsi_Host *SChost)
{
 static char info_msg[256];
 struct sym53c500_data *data =
     (struct sym53c500_data *)SChost->hostdata;

 DEB(printk("SYM53C500_info called\n"));
 (void)snprintf(info_msg, sizeof(info_msg),
     "SYM53C500 at 0x%lx, IRQ %d, %s PIO mode.",
     SChost->io_port, SChost->irq, data->fast_pio ? "fast" : "slow");
 return (info_msg);
}
