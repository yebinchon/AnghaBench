
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u8 ;
typedef unsigned long u32 ;
typedef unsigned long u16 ;
struct zd_usb {scalar_t__ req_buf; } ;
struct usb_req_rfwrite {void** bit_values; void* bits; void* value; void* id; } ;
struct usb_device {int dummy; } ;
typedef int __le16 ;
struct TYPE_2__ {int mutex; } ;


 int BUG_ON (int) ;
 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 int EIO ;
 int EWOULDBLOCK ;
 unsigned long RF_CLK ;
 unsigned long RF_DATA ;
 unsigned long RF_IF_LE ;
 unsigned long USB_MAX_RFWRITE_BIT_COUNT ;
 unsigned long USB_MIN_RFWRITE_BIT_COUNT ;
 unsigned long USB_REQ_WRITE_RF ;
 int ZD_ASSERT (int ) ;
 int ZD_CR203 ;
 void* cpu_to_le16 (unsigned long) ;
 int dev_dbg_f (int ,char*,...) ;
 scalar_t__ in_atomic () ;
 int mutex_is_locked (int *) ;
 int zd_ep_regs_out_msg (struct usb_device*,struct usb_req_rfwrite*,int,int*,int) ;
 int zd_usb_dev (struct zd_usb*) ;
 int zd_usb_ioread16 (struct zd_usb*,unsigned long*,int ) ;
 TYPE_1__* zd_usb_to_chip (struct zd_usb*) ;
 struct usb_device* zd_usb_to_usbdev (struct zd_usb*) ;

int zd_usb_rfwrite(struct zd_usb *usb, u32 value, u8 bits)
{
 int r;
 struct usb_device *udev;
 struct usb_req_rfwrite *req = ((void*)0);
 int i, req_len, actual_req_len;
 u16 bit_value_template;

 if (in_atomic()) {
  dev_dbg_f(zd_usb_dev(usb),
   "error: io in atomic context not supported\n");
  return -EWOULDBLOCK;
 }
 if (bits < USB_MIN_RFWRITE_BIT_COUNT) {
  dev_dbg_f(zd_usb_dev(usb),
   "error: bits %d are smaller than"
   " USB_MIN_RFWRITE_BIT_COUNT %d\n",
   bits, USB_MIN_RFWRITE_BIT_COUNT);
  return -EINVAL;
 }
 if (bits > USB_MAX_RFWRITE_BIT_COUNT) {
  dev_dbg_f(zd_usb_dev(usb),
   "error: bits %d exceed USB_MAX_RFWRITE_BIT_COUNT %d\n",
   bits, USB_MAX_RFWRITE_BIT_COUNT);
  return -EINVAL;
 }
 dev_dbg_f(zd_usb_dev(usb), "value %#09x bits %d\n", value, bits);

 r = zd_usb_ioread16(usb, &bit_value_template, ZD_CR203);
 if (r) {
  dev_dbg_f(zd_usb_dev(usb),
   "error %d: Couldn't read ZD_CR203\n", r);
  return r;
 }
 bit_value_template &= ~(RF_IF_LE|RF_CLK|RF_DATA);

 ZD_ASSERT(mutex_is_locked(&zd_usb_to_chip(usb)->mutex));
 BUILD_BUG_ON(sizeof(struct usb_req_rfwrite) +
       USB_MAX_RFWRITE_BIT_COUNT * sizeof(__le16) >
       sizeof(usb->req_buf));
 BUG_ON(sizeof(struct usb_req_rfwrite) + bits * sizeof(__le16) >
        sizeof(usb->req_buf));

 req_len = sizeof(struct usb_req_rfwrite) + bits * sizeof(__le16);
 req = (void *)usb->req_buf;

 req->id = cpu_to_le16(USB_REQ_WRITE_RF);

 req->value = cpu_to_le16(2);
 req->bits = cpu_to_le16(bits);

 for (i = 0; i < bits; i++) {
  u16 bv = bit_value_template;
  if (value & (1 << (bits-1-i)))
   bv |= RF_DATA;
  req->bit_values[i] = cpu_to_le16(bv);
 }

 udev = zd_usb_to_usbdev(usb);
 r = zd_ep_regs_out_msg(udev, req, req_len, &actual_req_len, 50 );
 if (r) {
  dev_dbg_f(zd_usb_dev(usb),
   "error in zd_ep_regs_out_msg(). Error number %d\n", r);
  goto out;
 }
 if (req_len != actual_req_len) {
  dev_dbg_f(zd_usb_dev(usb), "error in zd_ep_regs_out_msg()"
   " req_len %d != actual_req_len %d\n",
   req_len, actual_req_len);
  r = -EIO;
  goto out;
 }


out:
 return r;
}
