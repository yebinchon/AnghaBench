
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnic {unsigned int intr_count; unsigned int rq_count; unsigned int raw_wq_count; unsigned int wq_copy_count; unsigned int cq_count; int * io_sgl_pool; int io_req_pool; int * intr; int * cq; int * wq_copy; int * rq; int * wq; int vdev; } ;


 unsigned int FNIC_SGL_NUM_CACHES ;
 int fnic_free_rq_buf ;
 int fnic_free_wq_buf ;
 int fnic_rq_cmpl_handler (struct fnic*,int) ;
 int fnic_wq_cmpl_handler (struct fnic*,int) ;
 int fnic_wq_copy_cleanup_handler ;
 int fnic_wq_copy_cmpl_handler (struct fnic*,int) ;
 int mempool_destroy (int ) ;
 int vnic_cq_clean (int *) ;
 int vnic_dev_disable (int ) ;
 int vnic_intr_clean (int *) ;
 int vnic_intr_mask (int *) ;
 int vnic_rq_clean (int *,int ) ;
 int vnic_rq_disable (int *) ;
 int vnic_wq_clean (int *,int ) ;
 int vnic_wq_copy_clean (int *,int ) ;
 int vnic_wq_copy_disable (int *) ;
 int vnic_wq_disable (int *) ;

__attribute__((used)) static int fnic_cleanup(struct fnic *fnic)
{
 unsigned int i;
 int err;

 vnic_dev_disable(fnic->vdev);
 for (i = 0; i < fnic->intr_count; i++)
  vnic_intr_mask(&fnic->intr[i]);

 for (i = 0; i < fnic->rq_count; i++) {
  err = vnic_rq_disable(&fnic->rq[i]);
  if (err)
   return err;
 }
 for (i = 0; i < fnic->raw_wq_count; i++) {
  err = vnic_wq_disable(&fnic->wq[i]);
  if (err)
   return err;
 }
 for (i = 0; i < fnic->wq_copy_count; i++) {
  err = vnic_wq_copy_disable(&fnic->wq_copy[i]);
  if (err)
   return err;
 }


 fnic_wq_copy_cmpl_handler(fnic, -1);
 fnic_wq_cmpl_handler(fnic, -1);
 fnic_rq_cmpl_handler(fnic, -1);


 for (i = 0; i < fnic->raw_wq_count; i++)
  vnic_wq_clean(&fnic->wq[i], fnic_free_wq_buf);
 for (i = 0; i < fnic->rq_count; i++)
  vnic_rq_clean(&fnic->rq[i], fnic_free_rq_buf);
 for (i = 0; i < fnic->wq_copy_count; i++)
  vnic_wq_copy_clean(&fnic->wq_copy[i],
       fnic_wq_copy_cleanup_handler);

 for (i = 0; i < fnic->cq_count; i++)
  vnic_cq_clean(&fnic->cq[i]);
 for (i = 0; i < fnic->intr_count; i++)
  vnic_intr_clean(&fnic->intr[i]);

 mempool_destroy(fnic->io_req_pool);
 for (i = 0; i < FNIC_SGL_NUM_CACHES; i++)
  mempool_destroy(fnic->io_sgl_pool[i]);

 return 0;
}
