
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_kcopyd_client {int job_pool; int io_client; int kcopyd_wq; int pages_jobs; int io_jobs; int complete_jobs; int nr_jobs; int destroyq; } ;


 int BUG_ON (int) ;
 int atomic_read (int *) ;
 int client_free_pages (struct dm_kcopyd_client*) ;
 int destroy_workqueue (int ) ;
 int dm_io_client_destroy (int ) ;
 int kfree (struct dm_kcopyd_client*) ;
 int list_empty (int *) ;
 int mempool_destroy (int ) ;
 int wait_event (int ,int) ;

void dm_kcopyd_client_destroy(struct dm_kcopyd_client *kc)
{

 wait_event(kc->destroyq, !atomic_read(&kc->nr_jobs));

 BUG_ON(!list_empty(&kc->complete_jobs));
 BUG_ON(!list_empty(&kc->io_jobs));
 BUG_ON(!list_empty(&kc->pages_jobs));
 destroy_workqueue(kc->kcopyd_wq);
 dm_io_client_destroy(kc->io_client);
 client_free_pages(kc);
 mempool_destroy(kc->job_pool);
 kfree(kc);
}
