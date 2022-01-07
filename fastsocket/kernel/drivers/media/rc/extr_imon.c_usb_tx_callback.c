
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int status; scalar_t__ context; } ;
struct TYPE_2__ {int busy; int finished; int status; } ;
struct imon_context {TYPE_1__ tx; } ;


 int complete (int *) ;
 int smp_rmb () ;

__attribute__((used)) static void usb_tx_callback(struct urb *urb)
{
 struct imon_context *ictx;

 if (!urb)
  return;
 ictx = (struct imon_context *)urb->context;
 if (!ictx)
  return;

 ictx->tx.status = urb->status;


 ictx->tx.busy = 0;
 smp_rmb();
 complete(&ictx->tx.finished);
}
