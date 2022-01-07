
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {scalar_t__ curframe; int wq; } ;


 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int
ov51x_wait_frames_inactive(struct usb_ov511 *ov)
{
 return wait_event_interruptible(ov->wq, ov->curframe < 0);
}
