
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnic {unsigned int raw_wq_count; unsigned int wq_copy_count; unsigned int rq_count; unsigned int cq_count; unsigned int intr_count; int * intr; int * cq; int * rq; int * wq_copy; int * wq; } ;


 int vnic_cq_free (int *) ;
 int vnic_intr_free (int *) ;
 int vnic_rq_free (int *) ;
 int vnic_wq_copy_free (int *) ;
 int vnic_wq_free (int *) ;

void fnic_free_vnic_resources(struct fnic *fnic)
{
 unsigned int i;

 for (i = 0; i < fnic->raw_wq_count; i++)
  vnic_wq_free(&fnic->wq[i]);

 for (i = 0; i < fnic->wq_copy_count; i++)
  vnic_wq_copy_free(&fnic->wq_copy[i]);

 for (i = 0; i < fnic->rq_count; i++)
  vnic_rq_free(&fnic->rq[i]);

 for (i = 0; i < fnic->cq_count; i++)
  vnic_cq_free(&fnic->cq[i]);

 for (i = 0; i < fnic->intr_count; i++)
  vnic_intr_free(&fnic->intr[i]);
}
