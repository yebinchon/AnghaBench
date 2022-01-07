
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wait_queue_t ;
struct usb_interface {int dummy; } ;
typedef TYPE_1__* pdabusb_t ;
struct TYPE_6__ {int state; } ;
struct TYPE_5__ {int remove_pending; scalar_t__ state; scalar_t__ overruns; int * usbdev; int remove_ok; int wait; } ;


 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 scalar_t__ _started ;
 int add_wait_queue (int *,int *) ;
 TYPE_3__* current ;
 int dabusb_class ;
 int dbg (char*) ;
 int init_waitqueue_entry (int *,TYPE_3__*) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 TYPE_1__* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void dabusb_disconnect (struct usb_interface *intf)
{
 wait_queue_t __wait;
 pdabusb_t s = usb_get_intfdata (intf);

 dbg("dabusb_disconnect");

 init_waitqueue_entry(&__wait, current);

 usb_set_intfdata (intf, ((void*)0));
 if (s) {
  usb_deregister_dev (intf, &dabusb_class);
  s->remove_pending = 1;
  wake_up (&s->wait);
  add_wait_queue(&s->remove_ok, &__wait);
  set_current_state(TASK_UNINTERRUPTIBLE);
  if (s->state == _started)
   schedule();
  current->state = TASK_RUNNING;
  remove_wait_queue(&s->remove_ok, &__wait);

  s->usbdev = ((void*)0);
  s->overruns = 0;
 }
}
