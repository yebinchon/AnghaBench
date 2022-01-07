
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbpn_dev {int rx_pipe; int usb; struct net_device* dev; } ;
struct urb {scalar_t__ transfer_flags; } ;
struct page {int dummy; } ;
struct net_device {int dev; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int PAGE_SIZE ;
 struct page* __netdev_alloc_page (struct net_device*,int ) ;
 int dev_dbg (int *,char*,int) ;
 int netdev_free_page (struct net_device*,struct page*) ;
 int page_address (struct page*) ;
 int rx_complete ;
 scalar_t__ unlikely (int) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int ,int ,int ,struct net_device*) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int rx_submit(struct usbpn_dev *pnd, struct urb *req, gfp_t gfp_flags)
{
 struct net_device *dev = pnd->dev;
 struct page *page;
 int err;

 page = __netdev_alloc_page(dev, gfp_flags);
 if (!page)
  return -ENOMEM;

 usb_fill_bulk_urb(req, pnd->usb, pnd->rx_pipe, page_address(page),
    PAGE_SIZE, rx_complete, dev);
 req->transfer_flags = 0;
 err = usb_submit_urb(req, gfp_flags);
 if (unlikely(err)) {
  dev_dbg(&dev->dev, "RX submit error (%d)\n", err);
  netdev_free_page(dev, page);
 }
 return err;
}
