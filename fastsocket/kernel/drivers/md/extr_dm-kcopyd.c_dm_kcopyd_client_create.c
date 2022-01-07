
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_kcopyd_throttle {int dummy; } ;
struct dm_kcopyd_client {int job_pool; int kcopyd_wq; int nr_jobs; int destroyq; int io_client; scalar_t__ nr_free_pages; scalar_t__ nr_reserved_pages; int * pages; int kcopyd_work; int unplug; struct dm_kcopyd_throttle* throttle; int pages_jobs; int io_jobs; int complete_jobs; int job_lock; } ;


 int ENOMEM ;
 struct dm_kcopyd_client* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int MIN_JOBS ;
 int PTR_ERR (int ) ;
 int RESERVE_PAGES ;
 int _job_cache ;
 int atomic_set (int *,int ) ;
 int client_free_pages (struct dm_kcopyd_client*) ;
 int client_reserve_pages (struct dm_kcopyd_client*,int ) ;
 int create_singlethread_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 int dm_io_client_create () ;
 int do_work ;
 int init_waitqueue_head (int *) ;
 int kfree (struct dm_kcopyd_client*) ;
 struct dm_kcopyd_client* kmalloc (int,int ) ;
 int mempool_create_slab_pool (int ,int ) ;
 int mempool_destroy (int ) ;
 int memset (int ,int ,int) ;
 int spin_lock_init (int *) ;

struct dm_kcopyd_client *dm_kcopyd_client_create(struct dm_kcopyd_throttle *throttle)
{
 int r = -ENOMEM;
 struct dm_kcopyd_client *kc;

 kc = kmalloc(sizeof(*kc), GFP_KERNEL);
 if (!kc)
  return ERR_PTR(-ENOMEM);

 spin_lock_init(&kc->job_lock);
 INIT_LIST_HEAD(&kc->complete_jobs);
 INIT_LIST_HEAD(&kc->io_jobs);
 INIT_LIST_HEAD(&kc->pages_jobs);
 kc->throttle = throttle;

 memset(kc->unplug, 0, sizeof(kc->unplug));

 kc->job_pool = mempool_create_slab_pool(MIN_JOBS, _job_cache);
 if (!kc->job_pool)
  goto bad_slab;

 INIT_WORK(&kc->kcopyd_work, do_work);
 kc->kcopyd_wq = create_singlethread_workqueue("kcopyd");
 if (!kc->kcopyd_wq)
  goto bad_workqueue;

 kc->pages = ((void*)0);
 kc->nr_reserved_pages = kc->nr_free_pages = 0;
 r = client_reserve_pages(kc, RESERVE_PAGES);
 if (r)
  goto bad_client_pages;

 kc->io_client = dm_io_client_create();
 if (IS_ERR(kc->io_client)) {
  r = PTR_ERR(kc->io_client);
  goto bad_io_client;
 }

 init_waitqueue_head(&kc->destroyq);
 atomic_set(&kc->nr_jobs, 0);

 return kc;

bad_io_client:
 client_free_pages(kc);
bad_client_pages:
 destroy_workqueue(kc->kcopyd_wq);
bad_workqueue:
 mempool_destroy(kc->job_pool);
bad_slab:
 kfree(kc);

 return ERR_PTR(r);
}
