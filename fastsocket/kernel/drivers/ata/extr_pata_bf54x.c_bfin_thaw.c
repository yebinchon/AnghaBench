
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dev; } ;


 int bfin_check_status (struct ata_port*) ;
 int bfin_irq_on (struct ata_port*) ;
 int dev_dbg (int ,char*) ;

void bfin_thaw(struct ata_port *ap)
{
 dev_dbg(ap->dev, "in atapi dma thaw\n");
 bfin_check_status(ap);
 bfin_irq_on(ap);
}
