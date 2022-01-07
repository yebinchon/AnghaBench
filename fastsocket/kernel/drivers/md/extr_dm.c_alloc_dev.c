
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int bi_rw; scalar_t__ bi_bdev; } ;
struct mapped_device {scalar_t__ queue; TYPE_1__* disk; int wq; TYPE_3__ flush_bio; scalar_t__ bdev; int name; int eventq; int work; int wait; int * pending; int uevent_lock; int uevent_list; int uevent_seq; int event_nr; int open_count; int holders; int map_lock; int deferred_lock; int type_lock; int suspend_lock; int io_lock; int type; } ;
struct TYPE_7__ {int first_minor; int disk_name; struct mapped_device* private_data; scalar_t__ queue; int * fops; int major; } ;


 int BUG_ON (int) ;
 int DMWARN (char*) ;
 int DM_ANY_MINOR ;
 int DM_TYPE_NONE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 void* MINOR_ALLOCED ;
 int MKDEV (int ,int) ;
 int THIS_MODULE ;
 int WRITE_FLUSH ;
 int _major ;
 int _minor_idr ;
 int _minor_lock ;
 int add_disk (TYPE_1__*) ;
 TYPE_1__* alloc_disk (int) ;
 int atomic_set (int *,int) ;
 scalar_t__ bdget_disk (TYPE_1__*,int ) ;
 int bio_init (TYPE_3__*) ;
 scalar_t__ blk_alloc_queue (int ) ;
 int blk_cleanup_queue (scalar_t__) ;
 int create_singlethread_workqueue (char*) ;
 int del_gendisk (TYPE_1__*) ;
 int destroy_workqueue (int ) ;
 int dm_blk_dops ;
 int dm_init_md_queue (struct mapped_device*) ;
 int dm_wq_work ;
 int format_dev_t (int ,int ) ;
 int free_minor (int) ;
 void* idr_replace (int *,struct mapped_device*,int) ;
 int init_rwsem (int *) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct mapped_device*) ;
 struct mapped_device* kzalloc (int,int ) ;
 int module_put (int ) ;
 int mutex_init (int *) ;
 int next_free_minor (int*) ;
 int put_disk (TYPE_1__*) ;
 int rwlock_init (int *) ;
 int specific_minor (int) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int sprintf (int ,char*,int) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct mapped_device *alloc_dev(int minor)
{
 int r;
 struct mapped_device *md = kzalloc(sizeof(*md), GFP_KERNEL);
 void *old_md;

 if (!md) {
  DMWARN("unable to allocate device, out of memory.");
  return ((void*)0);
 }

 if (!try_module_get(THIS_MODULE))
  goto bad_module_get;


 if (minor == DM_ANY_MINOR)
  r = next_free_minor(&minor);
 else
  r = specific_minor(minor);
 if (r < 0)
  goto bad_minor;

 md->type = DM_TYPE_NONE;
 init_rwsem(&md->io_lock);
 mutex_init(&md->suspend_lock);
 mutex_init(&md->type_lock);
 spin_lock_init(&md->deferred_lock);
 rwlock_init(&md->map_lock);
 atomic_set(&md->holders, 1);
 atomic_set(&md->open_count, 0);
 atomic_set(&md->event_nr, 0);
 atomic_set(&md->uevent_seq, 0);
 INIT_LIST_HEAD(&md->uevent_list);
 spin_lock_init(&md->uevent_lock);

 md->queue = blk_alloc_queue(GFP_KERNEL);
 if (!md->queue)
  goto bad_queue;

 dm_init_md_queue(md);

 md->disk = alloc_disk(1);
 if (!md->disk)
  goto bad_disk;

 atomic_set(&md->pending[0], 0);
 atomic_set(&md->pending[1], 0);
 init_waitqueue_head(&md->wait);
 INIT_WORK(&md->work, dm_wq_work);
 init_waitqueue_head(&md->eventq);

 md->disk->major = _major;
 md->disk->first_minor = minor;
 md->disk->fops = &dm_blk_dops;
 md->disk->queue = md->queue;
 md->disk->private_data = md;
 sprintf(md->disk->disk_name, "dm-%d", minor);
 add_disk(md->disk);
 format_dev_t(md->name, MKDEV(_major, minor));

 md->wq = create_singlethread_workqueue("kdmflush");
 if (!md->wq)
  goto bad_thread;

 md->bdev = bdget_disk(md->disk, 0);
 if (!md->bdev)
  goto bad_bdev;

 bio_init(&md->flush_bio);
 md->flush_bio.bi_bdev = md->bdev;
 md->flush_bio.bi_rw = WRITE_FLUSH;


 spin_lock(&_minor_lock);
 old_md = idr_replace(&_minor_idr, md, minor);
 spin_unlock(&_minor_lock);

 BUG_ON(old_md != MINOR_ALLOCED);

 return md;

bad_bdev:
 destroy_workqueue(md->wq);
bad_thread:
 del_gendisk(md->disk);
 put_disk(md->disk);
bad_disk:
 blk_cleanup_queue(md->queue);
bad_queue:
 free_minor(minor);
bad_minor:
 module_put(THIS_MODULE);
bad_module_get:
 kfree(md);
 return ((void*)0);
}
