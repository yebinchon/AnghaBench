
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_7__ {void* wLength; scalar_t__ wIndex; void* wValue; int bRequest; int bRequestType; } ;
struct TYPE_8__ {int flags; int netdev; TYPE_3__* ctrl_urb; int rx_creg; TYPE_1__ dr; int udev; } ;
typedef TYPE_2__ rtl8150_t ;
struct TYPE_9__ {int transfer_buffer_length; } ;


 int EAGAIN ;
 int ENODEV ;
 int GFP_ATOMIC ;
 int RTL8150_REQT_WRITE ;
 int RTL8150_REQ_SET_REGS ;
 int RX_REG_SET ;
 void* cpu_to_le16 (int ) ;
 int ctrl_callback ;
 int err (char*,int) ;
 int netif_device_detach (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_fill_control_urb (TYPE_3__*,int ,int ,char*,int *,int ,int ,TYPE_2__*) ;
 int usb_sndctrlpipe (int ,int ) ;
 int usb_submit_urb (TYPE_3__*,int ) ;

__attribute__((used)) static int async_set_registers(rtl8150_t * dev, u16 indx, u16 size)
{
 int ret;

 if (test_bit(RX_REG_SET, &dev->flags))
  return -EAGAIN;

 dev->dr.bRequestType = RTL8150_REQT_WRITE;
 dev->dr.bRequest = RTL8150_REQ_SET_REGS;
 dev->dr.wValue = cpu_to_le16(indx);
 dev->dr.wIndex = 0;
 dev->dr.wLength = cpu_to_le16(size);
 dev->ctrl_urb->transfer_buffer_length = size;
 usb_fill_control_urb(dev->ctrl_urb, dev->udev,
    usb_sndctrlpipe(dev->udev, 0), (char *) &dev->dr,
    &dev->rx_creg, size, ctrl_callback, dev);
 if ((ret = usb_submit_urb(dev->ctrl_urb, GFP_ATOMIC))) {
  if (ret == -ENODEV)
   netif_device_detach(dev->netdev);
  err("control request submission failed: %d", ret);
 } else
  set_bit(RX_REG_SET, &dev->flags);

 return ret;
}
