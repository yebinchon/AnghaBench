
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_ov511 {int cbuf_lock; scalar_t__ cbuf; int dev; } ;
typedef int __u16 ;
typedef int __le32 ;


 int PDEBUG (int,char*,unsigned char,int ,int) ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int __cpu_to_le32 (int ) ;
 int err (char*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int symbolic (int ,int) ;
 int urb_errlist ;
 int usb_control_msg (int ,int ,int,int,int ,int ,scalar_t__,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int
ov518_reg_w32(struct usb_ov511 *ov, unsigned char reg, u32 val, int n)
{
 int rc;

 PDEBUG(5, "0x%02X:%7d, n=%d", reg, val, n);

 mutex_lock(&ov->cbuf_lock);

 *((__le32 *)ov->cbuf) = __cpu_to_le32(val);

 rc = usb_control_msg(ov->dev,
        usb_sndctrlpipe(ov->dev, 0),
        1 ,
        USB_TYPE_VENDOR | USB_RECIP_DEVICE,
        0, (__u16)reg, ov->cbuf, n, 1000);
 mutex_unlock(&ov->cbuf_lock);

 if (rc < 0)
  err("reg write multiple: error %d: %s", rc,
      symbolic(urb_errlist, rc));

 return rc;
}
