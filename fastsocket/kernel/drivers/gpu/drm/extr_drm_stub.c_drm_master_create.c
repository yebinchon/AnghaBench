
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_minor {int master_list; } ;
struct TYPE_2__ {int lock_queue; int spinlock; } ;
struct drm_master {int head; struct drm_minor* minor; int magicfree; int magiclist; TYPE_1__ lock; int refcount; } ;


 int DRM_MAGIC_HASH_ORDER ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int drm_ht_create (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int kref_init (int *) ;
 struct drm_master* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;

struct drm_master *drm_master_create(struct drm_minor *minor)
{
 struct drm_master *master;

 master = kzalloc(sizeof(*master), GFP_KERNEL);
 if (!master)
  return ((void*)0);

 kref_init(&master->refcount);
 spin_lock_init(&master->lock.spinlock);
 init_waitqueue_head(&master->lock.lock_queue);
 drm_ht_create(&master->magiclist, DRM_MAGIC_HASH_ORDER);
 INIT_LIST_HEAD(&master->magicfree);
 master->minor = minor;

 list_add_tail(&master->head, &minor->master_list);

 return master;
}
