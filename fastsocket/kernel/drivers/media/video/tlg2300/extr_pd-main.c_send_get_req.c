
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned short u16 ;
struct poseidon {int state; int udev; } ;
typedef int s8 ;
typedef int s32 ;


 int ENODEV ;
 int ENXIO ;
 int POSEIDON_STATE_DISCONNECT ;
 int REQ_GET_CMD ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int mdelay (int) ;
 int memcpy (char*,int *,int) ;
 int usb_control_msg (int ,int ,int,int,unsigned short,unsigned short,int **,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

s32 send_get_req(struct poseidon *pd, u8 cmdid, s32 param,
   void *buf, s32 *cmd_status, s32 datalen)
{
 s32 ret;
 s8 data[128] = {};
 u16 lower_16, upper_16;

 if (pd->state & POSEIDON_STATE_DISCONNECT)
  return -ENODEV;

 mdelay(30);
 if (param == 0) {
  upper_16 = lower_16 = 0;
 } else {

  lower_16 = (unsigned short)(param & 0xffff);
  upper_16 = (unsigned short)((param >> 16) & 0xffff);
 }
 ret = usb_control_msg(pd->udev,
    usb_rcvctrlpipe(pd->udev, 0),
    REQ_GET_CMD | cmdid,
    USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    lower_16,
    upper_16,
    &data,
    (datalen + sizeof(*cmd_status)),
    USB_CTRL_GET_TIMEOUT);

 if (ret < 0) {
  return -ENXIO;
 } else {

  memcpy((char *)cmd_status, &data[0], sizeof(*cmd_status));
  memcpy((char *)buf, &data[sizeof(*cmd_status)], datalen);
 }
 return 0;
}
