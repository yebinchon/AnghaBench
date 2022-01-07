
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;
struct req_t {int cmd; int i2c_addr; int addr; int mbox; int addr_len; int data_len; int* data; } ;


 size_t ACK_HDR_LEN ;
 int AF9015_USB_TIMEOUT ;

 int BUF_LEN ;


 int EAGAIN ;
 int EINVAL ;




 int READ_WRITE_I2C ;

 size_t REQ_HDR_LEN ;



 int af9015_usb_mutex ;
 int deb_xfer (char*) ;
 int debug_dump (int*,int,int (*) (char*)) ;
 int err (char*,int,...) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int usb_bulk_msg (struct usb_device*,int ,int*,int,int*,int ) ;
 int usb_rcvbulkpipe (struct usb_device*,int) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;

__attribute__((used)) static int af9015_rw_udev(struct usb_device *udev, struct req_t *req)
{



 int act_len, ret;
 u8 buf[63];
 u8 write = 1;
 u8 msg_len = 8;
 static u8 seq;

 if (mutex_lock_interruptible(&af9015_usb_mutex) < 0)
  return -EAGAIN;

 buf[0] = req->cmd;
 buf[1] = seq++;
 buf[2] = req->i2c_addr;
 buf[3] = req->addr >> 8;
 buf[4] = req->addr & 0xff;
 buf[5] = req->mbox;
 buf[6] = req->addr_len;
 buf[7] = req->data_len;

 switch (req->cmd) {
 case 135:
 case 132:
 case 131:
 case 134:
  write = 0;
  break;
 case 133:
  write = 0;
  buf[2] |= 0x01;
 case 130:
  buf[0] = READ_WRITE_I2C;
  break;
 case 129:
  if (((req->addr & 0xff00) == 0xff00) ||
      ((req->addr & 0xff00) == 0xae00))
   buf[0] = 128;
 case 128:
 case 137:
 case 136:
 case 138:
  break;
 default:
  err("unknown command:%d", req->cmd);
  ret = -1;
  goto error_unlock;
 }


 if ((write && (req->data_len > 63 - 8)) ||
  (!write && (req->data_len > 63 - 2))) {
  err("too much data; cmd:%d len:%d", req->cmd, req->data_len);
  ret = -EINVAL;
  goto error_unlock;
 }


 if (write) {
  memcpy(&buf[8], req->data, req->data_len);
  msg_len += req->data_len;
 }

 deb_xfer(">>> ");
 debug_dump(buf, msg_len, deb_xfer);


 ret = usb_bulk_msg(udev, usb_sndbulkpipe(udev, 0x02), buf, msg_len,
  &act_len, AF9015_USB_TIMEOUT);
 if (ret)
  err("bulk message failed:%d (%d/%d)", ret, msg_len, act_len);
 else
  if (act_len != msg_len)
   ret = -1;
 if (ret)
  goto error_unlock;


 if (req->cmd == 136 || req->cmd == 131)
  goto exit_unlock;



 msg_len = 2;
 if (!write)
  msg_len += req->data_len;

 ret = usb_bulk_msg(udev, usb_rcvbulkpipe(udev, 0x81), buf, msg_len,
  &act_len, AF9015_USB_TIMEOUT);
 if (ret) {
  err("recv bulk message failed:%d", ret);
  ret = -1;
  goto error_unlock;
 }

 deb_xfer("<<< ");
 debug_dump(buf, act_len, deb_xfer);


 if (req->cmd == 134 && buf[1] == 1) {
  buf[1] = 0;
  memset(&buf[2], 0, req->data_len);
  buf[3] = 1;
 }


 if (buf[1]) {
  err("command failed:%d", buf[1]);
  ret = -1;
  goto error_unlock;
 }


 if (!write)
  memcpy(req->data, &buf[2], req->data_len);

error_unlock:
exit_unlock:
 mutex_unlock(&af9015_usb_mutex);

 return ret;
}
