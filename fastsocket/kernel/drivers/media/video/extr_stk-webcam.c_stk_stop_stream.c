
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stk_camera {int udev; TYPE_1__* isobufs; } ;
struct TYPE_2__ {scalar_t__ urb; } ;


 int MAX_ISO_BUFS ;
 int STK_ERROR (char*) ;
 scalar_t__ is_present (struct stk_camera*) ;
 int stk_camera_read_reg (struct stk_camera*,int,int*) ;
 int stk_camera_write_reg (struct stk_camera*,int,int) ;
 scalar_t__ stk_sensor_sleep (struct stk_camera*) ;
 int unset_streaming (struct stk_camera*) ;
 int usb_kill_urb (scalar_t__) ;
 scalar_t__ usb_set_interface (int ,int ,int ) ;

__attribute__((used)) static int stk_stop_stream(struct stk_camera *dev)
{
 int value;
 int i;
 if (is_present(dev)) {
  stk_camera_read_reg(dev, 0x0100, &value);
  stk_camera_write_reg(dev, 0x0100, value & ~0x80);
  if (dev->isobufs != ((void*)0)) {
   for (i = 0; i < MAX_ISO_BUFS; i++) {
    if (dev->isobufs[i].urb)
     usb_kill_urb(dev->isobufs[i].urb);
   }
  }
  unset_streaming(dev);

  if (usb_set_interface(dev->udev, 0, 0))
   STK_ERROR("usb_set_interface failed !\n");
  if (stk_sensor_sleep(dev))
   STK_ERROR("error suspending the sensor\n");
 }
 return 0;
}
