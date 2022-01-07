
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int done; int wait; } ;
struct request_context {int state; TYPE_1__ done; } ;
struct ezusb_priv {int dummy; } ;


 int DEF_TIMEOUT ;




 int HZ ;
 int in_softirq () ;
 int udelay (int) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static void ezusb_req_ctx_wait(struct ezusb_priv *upriv,
          struct request_context *ctx)
{
 switch (ctx->state) {
 case 131:
 case 129:
 case 130:
 case 128:
  if (in_softirq()) {



   int msecs = DEF_TIMEOUT * (1000 / HZ);
   while (!ctx->done.done && msecs--)
    udelay(1000);
  } else {
   wait_event_interruptible(ctx->done.wait,
       ctx->done.done);
  }
  break;
 default:

  break;
 }
}
