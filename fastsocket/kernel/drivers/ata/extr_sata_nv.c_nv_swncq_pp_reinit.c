
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct defer_queue {scalar_t__ defer_bits; scalar_t__ tail; scalar_t__ head; } ;
struct nv_swncq_port_priv {int last_issue_tag; scalar_t__ qc_active; struct defer_queue defer_queue; } ;
struct ata_port {struct nv_swncq_port_priv* private_data; } ;


 int ATA_TAG_POISON ;
 int nv_swncq_fis_reinit (struct ata_port*) ;

__attribute__((used)) static void nv_swncq_pp_reinit(struct ata_port *ap)
{
 struct nv_swncq_port_priv *pp = ap->private_data;
 struct defer_queue *dq = &pp->defer_queue;

 dq->head = 0;
 dq->tail = 0;
 dq->defer_bits = 0;
 pp->qc_active = 0;
 pp->last_issue_tag = ATA_TAG_POISON;
 nv_swncq_fis_reinit(ap);
}
