
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcs_cb {int * rx_urb; void* tx_urb; } ;


 int GFP_KERNEL ;
 void* usb_alloc_urb (int ,int ) ;

__attribute__((used)) static inline int mcs_setup_urbs(struct mcs_cb *mcs)
{
 mcs->rx_urb = ((void*)0);

 mcs->tx_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!mcs->tx_urb)
  return 0;

 mcs->rx_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!mcs->rx_urb)
  return 0;

 return 1;
}
