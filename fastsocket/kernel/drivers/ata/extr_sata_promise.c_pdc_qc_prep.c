
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pdc_port_priv {int pkt; } ;
struct TYPE_9__ {int protocol; int flags; } ;
struct ata_queued_cmd {TYPE_3__ tf; TYPE_2__* dev; TYPE_1__* ap; } ;
struct TYPE_8__ {int devno; } ;
struct TYPE_7__ {int prd_dma; struct pdc_port_priv* private_data; } ;







 int ATA_TFLAG_LBA48 ;
 int VPRINTK (char*) ;
 int pdc_atapi_pkt (struct ata_queued_cmd*) ;
 int pdc_fill_sg (struct ata_queued_cmd*) ;
 int pdc_pkt_footer (TYPE_3__*,int ,unsigned int) ;
 unsigned int pdc_pkt_header (TYPE_3__*,int ,int ,int ) ;
 unsigned int pdc_prep_lba28 (TYPE_3__*,int ,unsigned int) ;
 unsigned int pdc_prep_lba48 (TYPE_3__*,int ,unsigned int) ;

__attribute__((used)) static void pdc_qc_prep(struct ata_queued_cmd *qc)
{
 struct pdc_port_priv *pp = qc->ap->private_data;
 unsigned int i;

 VPRINTK("ENTER\n");

 switch (qc->tf.protocol) {
 case 129:
  pdc_fill_sg(qc);

 case 128:
  i = pdc_pkt_header(&qc->tf, qc->ap->prd_dma,
       qc->dev->devno, pp->pkt);
  if (qc->tf.flags & ATA_TFLAG_LBA48)
   i = pdc_prep_lba48(&qc->tf, pp->pkt, i);
  else
   i = pdc_prep_lba28(&qc->tf, pp->pkt, i);
  pdc_pkt_footer(&qc->tf, pp->pkt, i);
  break;
 case 130:
  pdc_fill_sg(qc);
  break;
 case 132:
  pdc_fill_sg(qc);

 case 131:
  pdc_atapi_pkt(qc);
  break;
 default:
  break;
 }
}
