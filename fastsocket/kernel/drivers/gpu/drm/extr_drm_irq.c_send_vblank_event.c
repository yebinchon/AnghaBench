
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_6__ {unsigned long sequence; int tv_usec; int tv_sec; } ;
struct TYPE_5__ {int pid; TYPE_1__* file_priv; int link; } ;
struct drm_pending_vblank_event {TYPE_3__ event; int pipe; TYPE_2__ base; } ;
struct drm_device {int event_lock; } ;
struct TYPE_4__ {int event_wait; int event_list; } ;


 int WARN_ON_SMP (int) ;
 int list_add_tail (int *,int *) ;
 int spin_is_locked (int *) ;
 int trace_drm_vblank_event_delivered (int ,int ,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void send_vblank_event(struct drm_device *dev,
  struct drm_pending_vblank_event *e,
  unsigned long seq, struct timeval *now)
{
 WARN_ON_SMP(!spin_is_locked(&dev->event_lock));
 e->event.sequence = seq;
 e->event.tv_sec = now->tv_sec;
 e->event.tv_usec = now->tv_usec;

 list_add_tail(&e->base.link,
        &e->base.file_priv->event_list);
 wake_up_interruptible(&e->base.file_priv->event_wait);
 trace_drm_vblank_event_delivered(e->base.pid, e->pipe,
      e->event.sequence);
}
