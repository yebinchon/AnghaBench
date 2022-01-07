
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {scalar_t__ urbout; } ;


 int usbhid_restart_ctrl_queue (struct usbhid_device*) ;
 int usbhid_restart_out_queue (struct usbhid_device*) ;

__attribute__((used)) static void usbhid_restart_queues(struct usbhid_device *usbhid)
{
 if (usbhid->urbout)
  usbhid_restart_out_queue(usbhid);
 usbhid_restart_ctrl_queue(usbhid);
}
