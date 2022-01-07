
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ksdazzle_cb {unsigned int tx_buf_clear_used; unsigned char* tx_payload; unsigned int tx_buf_clear_sent; TYPE_1__* tx_urb; int ep_out; int usbdev; int tx_buf_clear; } ;
struct TYPE_3__ {scalar_t__ status; } ;


 int GFP_ATOMIC ;
 int ksdazzle_send_irq ;
 int memcpy (unsigned char*,int ,unsigned int) ;
 int memset (unsigned char*,int ,int) ;
 int usb_fill_int_urb (TYPE_1__*,int ,int ,unsigned char*,int,int ,struct ksdazzle_cb*,int) ;
 int usb_sndintpipe (int ,int ) ;
 int usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int ksdazzle_submit_tx_fragment(struct ksdazzle_cb *kingsun)
{
 unsigned int wraplen;
 int ret;


 wraplen = 7;
 if (wraplen > kingsun->tx_buf_clear_used)
  wraplen = kingsun->tx_buf_clear_used;


 memset(kingsun->tx_payload, 0, 8);
 kingsun->tx_payload[0] = (unsigned char)0xf8 + wraplen;
 memcpy(kingsun->tx_payload + 1, kingsun->tx_buf_clear, wraplen);

 usb_fill_int_urb(kingsun->tx_urb, kingsun->usbdev,
    usb_sndintpipe(kingsun->usbdev, kingsun->ep_out),
    kingsun->tx_payload, 8, ksdazzle_send_irq, kingsun, 1);
 kingsun->tx_urb->status = 0;
 ret = usb_submit_urb(kingsun->tx_urb, GFP_ATOMIC);


 kingsun->tx_buf_clear_sent = (ret == 0) ? wraplen : 0;
 return ret;
}
