
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dm_target {char* error; unsigned int num_flush_requests; struct dm_snapshot* private; int table; } ;
struct dm_snapshot {int valid; int origin; int cow; TYPE_2__* store; int complete; int pending; int kcopyd_client; void* pending_pool; void* tracked_chunk_pool; int tracked_chunk_lock; int * tracked_chunk_hash; int bios_queued_during_merge; scalar_t__ num_merging_chunks; scalar_t__ first_merging_chunk; scalar_t__ merge_failed; scalar_t__ state_bits; int pe_lock; int list; int lock; int pending_exceptions_count; scalar_t__ active; struct dm_target* ti; } ;
typedef int fmode_t ;
struct TYPE_6__ {scalar_t__ chunk_size; TYPE_1__* type; } ;
struct TYPE_5__ {int (* read_metadata ) (TYPE_2__*,int ,void*) ;} ;


 int DMWARN (char*) ;
 int DM_TRACKED_CHUNK_HASH_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int MIN_IOS ;
 int PTR_ERR (int ) ;
 int atomic_set (int *,int ) ;
 int bio_list_init (int *) ;
 int dm_add_exception ;
 int dm_exception_store_create (struct dm_target*,unsigned int,char**,struct dm_snapshot*,unsigned int*,TYPE_2__**) ;
 int dm_exception_store_destroy (TYPE_2__*) ;
 int dm_exception_table_exit (int *,int ) ;
 int dm_get_device (struct dm_target*,char*,int ,int *) ;
 int dm_kcopyd_client_create (int *) ;
 int dm_kcopyd_client_destroy (int ) ;
 int dm_kcopyd_throttle ;
 int dm_put_device (struct dm_target*,int ) ;
 int dm_set_target_max_io_len (struct dm_target*,scalar_t__) ;
 int dm_table_get_mode (int ) ;
 scalar_t__ dm_target_is_snapshot_merge (struct dm_target*) ;
 int exception_cache ;
 scalar_t__ init_hash_tables (struct dm_snapshot*) ;
 int init_rwsem (int *) ;
 int kfree (struct dm_snapshot*) ;
 struct dm_snapshot* kmalloc (int,int ) ;
 void* mempool_create_slab_pool (int ,int ) ;
 int mempool_destroy (void*) ;
 int pending_cache ;
 int register_snapshot (struct dm_snapshot*) ;
 int spin_lock_init (int *) ;
 int stub1 (TYPE_2__*,int ,void*) ;
 int tracked_chunk_cache ;
 int unregister_snapshot (struct dm_snapshot*) ;

__attribute__((used)) static int snapshot_ctr(struct dm_target *ti, unsigned int argc, char **argv)
{
 struct dm_snapshot *s;
 int i;
 int r = -EINVAL;
 char *origin_path, *cow_path;
 unsigned args_used, num_flush_requests = 1;
 fmode_t origin_mode = FMODE_READ;

 if (argc != 4) {
  ti->error = "requires exactly 4 arguments";
  r = -EINVAL;
  goto bad;
 }

 if (dm_target_is_snapshot_merge(ti)) {
  num_flush_requests = 2;
  origin_mode = FMODE_WRITE;
 }

 s = kmalloc(sizeof(*s), GFP_KERNEL);
 if (!s) {
  ti->error = "Cannot allocate private snapshot structure";
  r = -ENOMEM;
  goto bad;
 }

 origin_path = argv[0];
 argv++;
 argc--;

 r = dm_get_device(ti, origin_path, origin_mode, &s->origin);
 if (r) {
  ti->error = "Cannot get origin device";
  goto bad_origin;
 }

 cow_path = argv[0];
 argv++;
 argc--;

 r = dm_get_device(ti, cow_path, dm_table_get_mode(ti->table), &s->cow);
 if (r) {
  ti->error = "Cannot get COW device";
  goto bad_cow;
 }

 r = dm_exception_store_create(ti, argc, argv, s, &args_used, &s->store);
 if (r) {
  ti->error = "Couldn't create exception store";
  r = -EINVAL;
  goto bad_store;
 }

 argv += args_used;
 argc -= args_used;

 s->ti = ti;
 s->valid = 1;
 s->active = 0;
 atomic_set(&s->pending_exceptions_count, 0);
 init_rwsem(&s->lock);
 INIT_LIST_HEAD(&s->list);
 spin_lock_init(&s->pe_lock);
 s->state_bits = 0;
 s->merge_failed = 0;
 s->first_merging_chunk = 0;
 s->num_merging_chunks = 0;
 bio_list_init(&s->bios_queued_during_merge);


 if (init_hash_tables(s)) {
  ti->error = "Unable to allocate hash table space";
  r = -ENOMEM;
  goto bad_hash_tables;
 }

 s->kcopyd_client = dm_kcopyd_client_create(&dm_kcopyd_throttle);
 if (IS_ERR(s->kcopyd_client)) {
  r = PTR_ERR(s->kcopyd_client);
  ti->error = "Could not create kcopyd client";
  goto bad_kcopyd;
 }

 s->pending_pool = mempool_create_slab_pool(MIN_IOS, pending_cache);
 if (!s->pending_pool) {
  ti->error = "Could not allocate mempool for pending exceptions";
  r = -ENOMEM;
  goto bad_pending_pool;
 }

 s->tracked_chunk_pool = mempool_create_slab_pool(MIN_IOS,
        tracked_chunk_cache);
 if (!s->tracked_chunk_pool) {
  ti->error = "Could not allocate tracked_chunk mempool for "
       "tracking reads";
  goto bad_tracked_chunk_pool;
 }

 for (i = 0; i < DM_TRACKED_CHUNK_HASH_SIZE; i++)
  INIT_HLIST_HEAD(&s->tracked_chunk_hash[i]);

 spin_lock_init(&s->tracked_chunk_lock);

 ti->private = s;
 ti->num_flush_requests = num_flush_requests;



 r = register_snapshot(s);
 if (r == -ENOMEM) {
  ti->error = "Snapshot origin struct allocation failed";
  goto bad_load_and_register;
 } else if (r < 0) {

  goto bad_load_and_register;
 }







 if (r > 0) {
  s->store->chunk_size = 0;
  return 0;
 }

 r = s->store->type->read_metadata(s->store, dm_add_exception,
       (void *)s);
 if (r < 0) {
  ti->error = "Failed to read snapshot metadata";
  goto bad_read_metadata;
 } else if (r > 0) {
  s->valid = 0;
  DMWARN("Snapshot is marked invalid.");
 }

 if (!s->store->chunk_size) {
  ti->error = "Chunk size not set";
  goto bad_read_metadata;
 }

 r = dm_set_target_max_io_len(ti, s->store->chunk_size);
 if (r)
  goto bad_read_metadata;

 return 0;

bad_read_metadata:
 unregister_snapshot(s);

bad_load_and_register:
 mempool_destroy(s->tracked_chunk_pool);

bad_tracked_chunk_pool:
 mempool_destroy(s->pending_pool);

bad_pending_pool:
 dm_kcopyd_client_destroy(s->kcopyd_client);

bad_kcopyd:
 dm_exception_table_exit(&s->pending, pending_cache);
 dm_exception_table_exit(&s->complete, exception_cache);

bad_hash_tables:
 dm_exception_store_destroy(s->store);

bad_store:
 dm_put_device(ti, s->cow);

bad_cow:
 dm_put_device(ti, s->origin);

bad_origin:
 kfree(s);

bad:
 return r;
}
