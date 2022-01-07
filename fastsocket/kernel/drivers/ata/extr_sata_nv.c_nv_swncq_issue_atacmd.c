
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv_swncq_port_priv {int last_issue_tag; int dhfis_bits; int dmafis_bits; int qc_active; int sactive_block; } ;
struct ata_queued_cmd {int tag; int tf; } ;
struct ata_port {TYPE_1__* ops; struct nv_swncq_port_priv* private_data; } ;
struct TYPE_2__ {int (* sff_exec_command ) (struct ata_port*,int *) ;int (* sff_tf_load ) (struct ata_port*,int *) ;} ;


 int DPRINTK (char*,...) ;
 int stub1 (struct ata_port*,int *) ;
 int stub2 (struct ata_port*,int *) ;
 int writel (int,int ) ;

__attribute__((used)) static unsigned int nv_swncq_issue_atacmd(struct ata_port *ap,
       struct ata_queued_cmd *qc)
{
 struct nv_swncq_port_priv *pp = ap->private_data;

 if (qc == ((void*)0))
  return 0;

 DPRINTK("Enter\n");

 writel((1 << qc->tag), pp->sactive_block);
 pp->last_issue_tag = qc->tag;
 pp->dhfis_bits &= ~(1 << qc->tag);
 pp->dmafis_bits &= ~(1 << qc->tag);
 pp->qc_active |= (0x1 << qc->tag);

 ap->ops->sff_tf_load(ap, &qc->tf);
 ap->ops->sff_exec_command(ap, &qc->tf);

 DPRINTK("Issued tag %u\n", qc->tag);

 return 0;
}
