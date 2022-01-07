
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {scalar_t__ bclass; int* cbuf; int cbuf_lock; int dev; } ;
typedef int __u16 ;


 scalar_t__ BCL_OV518 ;
 int PDEBUG (int,char*,unsigned char,int) ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int err (char*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int symbolic (int ,int) ;
 int urb_errlist ;
 int usb_control_msg (int ,int ,int,int,int ,int ,int*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int
reg_r(struct usb_ov511 *ov, unsigned char reg)
{
 int rc;

 mutex_lock(&ov->cbuf_lock);
 rc = usb_control_msg(ov->dev,
        usb_rcvctrlpipe(ov->dev, 0),
        (ov->bclass == BCL_OV518)?1:3 ,
        USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
        0, (__u16)reg, &ov->cbuf[0], 1, 1000);

 if (rc < 0) {
  err("reg read: error %d: %s", rc, symbolic(urb_errlist, rc));
 } else {
  rc = ov->cbuf[0];
  PDEBUG(5, "0x%02X:0x%02X", reg, ov->cbuf[0]);
 }

 mutex_unlock(&ov->cbuf_lock);

 return rc;
}
