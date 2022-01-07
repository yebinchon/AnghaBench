
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct ata_queued_cmd {unsigned int n_elem; struct scatterlist* sg; struct scatterlist* cursg; } ;



void ata_sg_init(struct ata_queued_cmd *qc, struct scatterlist *sg,
   unsigned int n_elem)
{
 qc->sg = sg;
 qc->n_elem = n_elem;
 qc->cursg = qc->sg;
}
