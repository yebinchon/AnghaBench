
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int actual_length; scalar_t__ status; struct iforce* context; } ;
struct iforce {int ecmd; int wait; } ;


 int wake_up (int *) ;

__attribute__((used)) static void iforce_usb_ctrl(struct urb *urb)
{
 struct iforce *iforce = urb->context;
 if (urb->status) return;
 iforce->ecmd = 0xff00 | urb->actual_length;
 wake_up(&iforce->wait);
}
