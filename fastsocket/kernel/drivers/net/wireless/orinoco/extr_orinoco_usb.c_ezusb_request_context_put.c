
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int done; } ;
struct request_context {struct request_context* buf; TYPE_2__* outurb; int timer; TYPE_1__ done; int refcount; } ;
struct TYPE_4__ {int status; } ;


 int BUG_ON (int) ;
 int EINPROGRESS ;
 int WARN_ON (int) ;
 int atomic_dec_and_test (int *) ;
 int kfree (struct request_context*) ;
 int timer_pending (int *) ;
 int usb_free_urb (TYPE_2__*) ;

__attribute__((used)) static void ezusb_request_context_put(struct request_context *ctx)
{
 if (!atomic_dec_and_test(&ctx->refcount))
  return;

 WARN_ON(!ctx->done.done);
 BUG_ON(ctx->outurb->status == -EINPROGRESS);
 BUG_ON(timer_pending(&ctx->timer));
 usb_free_urb(ctx->outurb);
 kfree(ctx->buf);
 kfree(ctx);
}
