
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int protocol; } ;
struct ata_queued_cmd {TYPE_2__ tf; TYPE_1__* ap; } ;
struct adma_port_priv {int state; } ;
struct TYPE_3__ {struct adma_port_priv* private_data; } ;




 int BUG () ;
 int adma_packet_start (struct ata_queued_cmd*) ;
 int adma_state_mmio ;
 int adma_state_pkt ;
 unsigned int ata_sff_qc_issue (struct ata_queued_cmd*) ;

__attribute__((used)) static unsigned int adma_qc_issue(struct ata_queued_cmd *qc)
{
 struct adma_port_priv *pp = qc->ap->private_data;

 switch (qc->tf.protocol) {
 case 128:
  pp->state = adma_state_pkt;
  adma_packet_start(qc);
  return 0;

 case 129:
  BUG();
  break;

 default:
  break;
 }

 pp->state = adma_state_mmio;
 return ata_sff_qc_issue(qc);
}
