
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {unsigned int wq_count; unsigned int rq_count; unsigned int cq_count; unsigned int intr_count; int * intr; int * cq; int * rq; int * wq; } ;


 int vnic_cq_free (int *) ;
 int vnic_intr_free (int *) ;
 int vnic_rq_free (int *) ;
 int vnic_wq_free (int *) ;

void enic_free_vnic_resources(struct enic *enic)
{
 unsigned int i;

 for (i = 0; i < enic->wq_count; i++)
  vnic_wq_free(&enic->wq[i]);
 for (i = 0; i < enic->rq_count; i++)
  vnic_rq_free(&enic->rq[i]);
 for (i = 0; i < enic->cq_count; i++)
  vnic_cq_free(&enic->cq[i]);
 for (i = 0; i < enic->intr_count; i++)
  vnic_intr_free(&enic->intr[i]);
}
