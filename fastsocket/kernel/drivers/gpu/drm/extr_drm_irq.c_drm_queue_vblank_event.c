
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int type; unsigned int sequence; int signal; } ;
struct TYPE_10__ {unsigned int sequence; } ;
union drm_wait_vblank {TYPE_5__ request; TYPE_4__ reply; } ;
struct timeval {int dummy; } ;
struct TYPE_9__ {void (* destroy ) (struct drm_pending_event*) ;int link; struct drm_file* file_priv; TYPE_1__* event; int pid; } ;
struct TYPE_7__ {int length; int type; } ;
struct TYPE_8__ {unsigned int sequence; TYPE_1__ base; int user_data; } ;
struct drm_pending_vblank_event {int pipe; TYPE_3__ base; TYPE_2__ event; } ;
struct drm_file {int event_space; } ;
struct drm_device {int event_lock; int vblank_event_list; } ;
struct TYPE_12__ {int pid; } ;


 int DRM_DEBUG (char*,unsigned int,unsigned int,int) ;
 int DRM_EVENT_VBLANK ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int _DRM_VBLANK_NEXTONMISS ;
 TYPE_6__* current ;
 unsigned int drm_vblank_count_and_time (struct drm_device*,int,struct timeval*) ;
 int drm_vblank_put (struct drm_device*,int) ;
 int kfree (struct drm_pending_vblank_event*) ;
 struct drm_pending_vblank_event* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int send_vblank_event (struct drm_device*,struct drm_pending_vblank_event*,unsigned int,struct timeval*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_drm_vblank_event_queued (int ,int,unsigned int) ;

__attribute__((used)) static int drm_queue_vblank_event(struct drm_device *dev, int pipe,
      union drm_wait_vblank *vblwait,
      struct drm_file *file_priv)
{
 struct drm_pending_vblank_event *e;
 struct timeval now;
 unsigned long flags;
 unsigned int seq;
 int ret;

 e = kzalloc(sizeof *e, GFP_KERNEL);
 if (e == ((void*)0)) {
  ret = -ENOMEM;
  goto err_put;
 }

 e->pipe = pipe;
 e->base.pid = current->pid;
 e->event.base.type = DRM_EVENT_VBLANK;
 e->event.base.length = sizeof e->event;
 e->event.user_data = vblwait->request.signal;
 e->base.event = &e->event.base;
 e->base.file_priv = file_priv;
 e->base.destroy = (void (*) (struct drm_pending_event *)) kfree;

 spin_lock_irqsave(&dev->event_lock, flags);

 if (file_priv->event_space < sizeof e->event) {
  ret = -EBUSY;
  goto err_unlock;
 }

 file_priv->event_space -= sizeof e->event;
 seq = drm_vblank_count_and_time(dev, pipe, &now);

 if ((vblwait->request.type & _DRM_VBLANK_NEXTONMISS) &&
     (seq - vblwait->request.sequence) <= (1 << 23)) {
  vblwait->request.sequence = seq + 1;
  vblwait->reply.sequence = vblwait->request.sequence;
 }

 DRM_DEBUG("event on vblank count %d, current %d, crtc %d\n",
    vblwait->request.sequence, seq, pipe);

 trace_drm_vblank_event_queued(current->pid, pipe,
          vblwait->request.sequence);

 e->event.sequence = vblwait->request.sequence;
 if ((seq - vblwait->request.sequence) <= (1 << 23)) {
  drm_vblank_put(dev, pipe);
  send_vblank_event(dev, e, seq, &now);
  vblwait->reply.sequence = seq;
 } else {

  list_add_tail(&e->base.link, &dev->vblank_event_list);
  vblwait->reply.sequence = vblwait->request.sequence;
 }

 spin_unlock_irqrestore(&dev->event_lock, flags);

 return 0;

err_unlock:
 spin_unlock_irqrestore(&dev->event_lock, flags);
 kfree(e);
err_put:
 drm_vblank_put(dev, pipe);
 return ret;
}
