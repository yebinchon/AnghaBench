
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct request_context {int killed; int refcount; int state; TYPE_1__* outurb; } ;
struct TYPE_2__ {int transfer_flags; } ;


 int EINPROGRESS ;
 int EZUSB_CTX_REQ_TIMEOUT ;
 int EZUSB_CTX_RESP_TIMEOUT ;
 int URB_ASYNC_UNLINK ;
 int atomic_inc (int *) ;
 int dbg (char*) ;
 int ezusb_ctx_complete (struct request_context*) ;
 int ezusb_request_context_put (struct request_context*) ;
 int usb_unlink_urb (TYPE_1__*) ;

__attribute__((used)) static void ezusb_request_timerfn(u_long _ctx)
{
 struct request_context *ctx = (void *) _ctx;

 ctx->outurb->transfer_flags |= URB_ASYNC_UNLINK;
 if (usb_unlink_urb(ctx->outurb) == -EINPROGRESS) {
  ctx->state = EZUSB_CTX_REQ_TIMEOUT;
 } else {
  ctx->state = EZUSB_CTX_RESP_TIMEOUT;
  dbg("couldn't unlink");
  atomic_inc(&ctx->refcount);
  ctx->killed = 1;
  ezusb_ctx_complete(ctx);
  ezusb_request_context_put(ctx);
 }
}
