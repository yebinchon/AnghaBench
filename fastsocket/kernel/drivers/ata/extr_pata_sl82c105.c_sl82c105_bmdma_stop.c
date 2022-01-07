
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {int dev; struct ata_port* ap; } ;
struct ata_port {int dummy; } ;


 int ata_bmdma_stop (struct ata_queued_cmd*) ;
 int sl82c105_reset_engine (struct ata_port*) ;
 int sl82c105_set_piomode (struct ata_port*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void sl82c105_bmdma_stop(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;

 ata_bmdma_stop(qc);
 sl82c105_reset_engine(ap);
 udelay(100);



 sl82c105_set_piomode(ap, qc->dev);
}
