
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kaweth_device {int suspend_lowmem_rx; int lowmem_work; TYPE_1__* rx_urb; int rxbufferhandle; int rx_buf; int dev; } ;
typedef int gfp_t ;
struct TYPE_3__ {int transfer_dma; int transfer_flags; } ;


 int ENOMEM ;
 int HZ ;
 int KAWETH_BUF_SIZE ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int err (char*,int) ;
 int kaweth_usb_receive ;
 int schedule_delayed_work (int *,int) ;
 int usb_fill_bulk_urb (TYPE_1__*,int ,int ,int ,int ,int ,struct kaweth_device*) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int kaweth_resubmit_rx_urb(struct kaweth_device *kaweth,
      gfp_t mem_flags)
{
 int result;

 usb_fill_bulk_urb(kaweth->rx_urb,
        kaweth->dev,
        usb_rcvbulkpipe(kaweth->dev, 1),
        kaweth->rx_buf,
        KAWETH_BUF_SIZE,
        kaweth_usb_receive,
        kaweth);
 kaweth->rx_urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
 kaweth->rx_urb->transfer_dma = kaweth->rxbufferhandle;

 if((result = usb_submit_urb(kaweth->rx_urb, mem_flags))) {
  if (result == -ENOMEM) {
   kaweth->suspend_lowmem_rx = 1;
   schedule_delayed_work(&kaweth->lowmem_work, HZ/4);
  }
  err("resubmitting rx_urb %d failed", result);
 } else {
  kaweth->suspend_lowmem_rx = 0;
 }

 return result;
}
