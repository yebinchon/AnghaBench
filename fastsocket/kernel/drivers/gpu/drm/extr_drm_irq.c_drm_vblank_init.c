
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_head_t ;
typedef int u32 ;
struct timeval {int dummy; } ;
struct drm_device {int num_crtcs; scalar_t__ vblank_disable_allowed; int * vblank_refcount; int * _vblank_count; int * vbl_queue; TYPE_1__* driver; void* _vblank_time; void* vblank_inmodeset; void* last_vblank_wait; void* last_vblank; void* vblank_enabled; int vblank_time_lock; int vbl_lock; int vblank_disable_timer; } ;
typedef int atomic_t ;
struct TYPE_2__ {scalar_t__ get_vblank_timestamp; } ;


 int DRM_INFO (char*) ;
 int DRM_VBLANKTIME_RBSIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_set (int *,int ) ;
 int drm_vblank_cleanup (struct drm_device*) ;
 int init_waitqueue_head (int *) ;
 void* kcalloc (int,int,int ) ;
 void* kmalloc (int,int ) ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_init (int *) ;
 int vblank_disable_fn ;

int drm_vblank_init(struct drm_device *dev, int num_crtcs)
{
 int i, ret = -ENOMEM;

 setup_timer(&dev->vblank_disable_timer, vblank_disable_fn,
      (unsigned long)dev);
 spin_lock_init(&dev->vbl_lock);
 spin_lock_init(&dev->vblank_time_lock);

 dev->num_crtcs = num_crtcs;

 dev->vbl_queue = kmalloc(sizeof(wait_queue_head_t) * num_crtcs,
     GFP_KERNEL);
 if (!dev->vbl_queue)
  goto err;

 dev->_vblank_count = kmalloc(sizeof(atomic_t) * num_crtcs, GFP_KERNEL);
 if (!dev->_vblank_count)
  goto err;

 dev->vblank_refcount = kmalloc(sizeof(atomic_t) * num_crtcs,
           GFP_KERNEL);
 if (!dev->vblank_refcount)
  goto err;

 dev->vblank_enabled = kcalloc(num_crtcs, sizeof(int), GFP_KERNEL);
 if (!dev->vblank_enabled)
  goto err;

 dev->last_vblank = kcalloc(num_crtcs, sizeof(u32), GFP_KERNEL);
 if (!dev->last_vblank)
  goto err;

 dev->last_vblank_wait = kcalloc(num_crtcs, sizeof(u32), GFP_KERNEL);
 if (!dev->last_vblank_wait)
  goto err;

 dev->vblank_inmodeset = kcalloc(num_crtcs, sizeof(int), GFP_KERNEL);
 if (!dev->vblank_inmodeset)
  goto err;

 dev->_vblank_time = kcalloc(num_crtcs * DRM_VBLANKTIME_RBSIZE,
        sizeof(struct timeval), GFP_KERNEL);
 if (!dev->_vblank_time)
  goto err;

 DRM_INFO("Supports vblank timestamp caching Rev 1 (10.10.2010).\n");


 if (dev->driver->get_vblank_timestamp)
  DRM_INFO("Driver supports precise vblank timestamp query.\n");
 else
  DRM_INFO("No driver support for vblank timestamp query.\n");


 for (i = 0; i < num_crtcs; i++) {
  init_waitqueue_head(&dev->vbl_queue[i]);
  atomic_set(&dev->_vblank_count[i], 0);
  atomic_set(&dev->vblank_refcount[i], 0);
 }

 dev->vblank_disable_allowed = 0;
 return 0;

err:
 drm_vblank_cleanup(dev);
 return ret;
}
