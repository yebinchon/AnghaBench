
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore {int valid; int metadata_wq; int * callbacks; int pending_count; scalar_t__ callback_count; scalar_t__ current_committed; scalar_t__ next_free; int * header_area; int * zero_area; int * area; int version; struct dm_exception_store* store; } ;
struct dm_exception_store {struct pstore* context; } ;


 int DMERR (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ NUM_SNAPSHOT_HDR_CHUNKS ;
 int SNAPSHOT_DISK_VERSION ;
 int atomic_set (int *,int ) ;
 int create_singlethread_workqueue (char*) ;
 int kfree (struct pstore*) ;
 struct pstore* kzalloc (int,int ) ;

__attribute__((used)) static int persistent_ctr(struct dm_exception_store *store,
     unsigned argc, char **argv)
{
 struct pstore *ps;


 ps = kzalloc(sizeof(*ps), GFP_KERNEL);
 if (!ps)
  return -ENOMEM;

 ps->store = store;
 ps->valid = 1;
 ps->version = SNAPSHOT_DISK_VERSION;
 ps->area = ((void*)0);
 ps->zero_area = ((void*)0);
 ps->header_area = ((void*)0);
 ps->next_free = NUM_SNAPSHOT_HDR_CHUNKS + 1;
 ps->current_committed = 0;

 ps->callback_count = 0;
 atomic_set(&ps->pending_count, 0);
 ps->callbacks = ((void*)0);

 ps->metadata_wq = create_singlethread_workqueue("ksnaphd");
 if (!ps->metadata_wq) {
  kfree(ps);
  DMERR("couldn't start header metadata update thread");
  return -ENOMEM;
 }

 store->context = ps;

 return 0;
}
