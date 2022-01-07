
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event; int id; int uid; } ;
struct ib_ucm_event {int ctx_list; int file_list; TYPE_1__ resp; struct ib_cm_id* cm_id; struct ib_ucm_context* ctx; } ;
struct ib_ucm_context {TYPE_2__* file; int events; int id; int uid; } ;
struct ib_cm_id {struct ib_ucm_context* context; } ;
struct ib_cm_event {int event; } ;
struct TYPE_4__ {int file_mutex; int poll_wait; int events; } ;


 int GFP_KERNEL ;
 int ib_ucm_event_process (struct ib_cm_event*,struct ib_ucm_event*) ;
 int ib_ucm_new_cm_id (int ) ;
 int kfree (struct ib_ucm_event*) ;
 struct ib_ucm_event* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int ib_ucm_event_handler(struct ib_cm_id *cm_id,
    struct ib_cm_event *event)
{
 struct ib_ucm_event *uevent;
 struct ib_ucm_context *ctx;
 int result = 0;

 ctx = cm_id->context;

 uevent = kzalloc(sizeof *uevent, GFP_KERNEL);
 if (!uevent)
  goto err1;

 uevent->ctx = ctx;
 uevent->cm_id = cm_id;
 uevent->resp.uid = ctx->uid;
 uevent->resp.id = ctx->id;
 uevent->resp.event = event->event;

 result = ib_ucm_event_process(event, uevent);
 if (result)
  goto err2;

 mutex_lock(&ctx->file->file_mutex);
 list_add_tail(&uevent->file_list, &ctx->file->events);
 list_add_tail(&uevent->ctx_list, &ctx->events);
 wake_up_interruptible(&ctx->file->poll_wait);
 mutex_unlock(&ctx->file->file_mutex);
 return 0;

err2:
 kfree(uevent);
err1:

 return ib_ucm_new_cm_id(event->event);
}
