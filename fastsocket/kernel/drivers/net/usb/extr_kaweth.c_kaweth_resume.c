
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct kaweth_device {int opened; int device_lock; int status; } ;


 int GFP_NOIO ;
 int KAWETH_STATUS_SUSPENDING ;
 int dbg (char*) ;
 int kaweth_resubmit_int_urb (struct kaweth_device*,int ) ;
 int kaweth_resubmit_rx_urb (struct kaweth_device*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct kaweth_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int kaweth_resume(struct usb_interface *intf)
{
 struct kaweth_device *kaweth = usb_get_intfdata(intf);
 unsigned long flags;

 dbg("Resuming device");
 spin_lock_irqsave(&kaweth->device_lock, flags);
 kaweth->status &= ~KAWETH_STATUS_SUSPENDING;
 spin_unlock_irqrestore(&kaweth->device_lock, flags);

 if (!kaweth->opened)
  return 0;
 kaweth_resubmit_rx_urb(kaweth, GFP_NOIO);
 kaweth_resubmit_int_urb(kaweth, GFP_NOIO);

 return 0;
}
