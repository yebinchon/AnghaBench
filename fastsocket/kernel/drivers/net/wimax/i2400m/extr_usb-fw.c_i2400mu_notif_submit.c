
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; } ;
struct urb {int dummy; } ;
struct i2400m {int bm_ack_buf; } ;
struct i2400mu {int usb_dev; int usb_iface; struct i2400m i2400m; } ;
struct completion {int dummy; } ;


 int GFP_KERNEL ;
 int I2400MU_EP_NOTIFICATION ;
 int I2400M_BM_ACK_BUF_SIZE ;
 int __i2400mu_bm_notif_cb ;
 int usb_fill_int_urb (struct urb*,int ,int,int ,int ,int ,struct completion*,int ) ;
 struct usb_endpoint_descriptor* usb_get_epd (int ,int ) ;
 int usb_rcvintpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static
int i2400mu_notif_submit(struct i2400mu *i2400mu, struct urb *urb,
    struct completion *completion)
{
 struct i2400m *i2400m = &i2400mu->i2400m;
 struct usb_endpoint_descriptor *epd;
 int pipe;

 epd = usb_get_epd(i2400mu->usb_iface, I2400MU_EP_NOTIFICATION);
 pipe = usb_rcvintpipe(i2400mu->usb_dev, epd->bEndpointAddress);
 usb_fill_int_urb(urb, i2400mu->usb_dev, pipe,
    i2400m->bm_ack_buf, I2400M_BM_ACK_BUF_SIZE,
    __i2400mu_bm_notif_cb, completion,
    epd->bInterval);
 return usb_submit_urb(urb, GFP_KERNEL);
}
