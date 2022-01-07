
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ks959_cb {unsigned int tx_buf_clear_used; unsigned int tx_buf_clear_sent; TYPE_2__* tx_urb; int tx_buf_xored; TYPE_1__* tx_setuprequest; int usbdev; int tx_buf_clear; } ;
struct TYPE_5__ {scalar_t__ status; } ;
struct TYPE_4__ {void* wLength; void* wValue; } ;


 int GFP_ATOMIC ;
 int KINGSUN_SND_PACKET_SIZE ;
 void* cpu_to_le16 (unsigned int) ;
 int ks959_send_irq ;
 unsigned int obfuscate_tx_buffer (int ,unsigned int,int ,int) ;
 int usb_fill_control_urb (TYPE_2__*,int ,int ,unsigned char*,int ,unsigned int,int ,struct ks959_cb*) ;
 int usb_sndctrlpipe (int ,int ) ;
 int usb_submit_urb (TYPE_2__*,int ) ;

__attribute__((used)) static int ks959_submit_tx_fragment(struct ks959_cb *kingsun)
{
 unsigned int padlen;
 unsigned int wraplen;
 int ret;



 wraplen = (KINGSUN_SND_PACKET_SIZE & ~0x7) - 0x10;
 if (wraplen > kingsun->tx_buf_clear_used)
  wraplen = kingsun->tx_buf_clear_used;



 padlen = obfuscate_tx_buffer(kingsun->tx_buf_clear, wraplen,
         kingsun->tx_buf_xored,
         KINGSUN_SND_PACKET_SIZE);


 kingsun->tx_setuprequest->wValue = cpu_to_le16(wraplen);
 kingsun->tx_setuprequest->wLength = cpu_to_le16(padlen);

 usb_fill_control_urb(kingsun->tx_urb, kingsun->usbdev,
        usb_sndctrlpipe(kingsun->usbdev, 0),
        (unsigned char *)kingsun->tx_setuprequest,
        kingsun->tx_buf_xored, padlen,
        ks959_send_irq, kingsun);
 kingsun->tx_urb->status = 0;
 ret = usb_submit_urb(kingsun->tx_urb, GFP_ATOMIC);


 kingsun->tx_buf_clear_sent = (ret == 0) ? wraplen : 0;
 return ret;
}
