
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_ov511 {scalar_t__ led_policy; int compress; scalar_t__ bridge; int packet_numbering; int maxwidth; int maxheight; int minwidth; int minheight; void* primary_i2c_slave; int snap_enabled; TYPE_3__* dev; int desc; } ;
struct usb_interface {int dummy; } ;
struct usb_host_interface {TYPE_2__* endpoint; } ;
struct ov511_regvals {int const member_1; int member_2; int const member_0; } ;
typedef int __u16 ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int wMaxPacketSize; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 scalar_t__ BRG_OV518 ;
 scalar_t__ BRG_OV518PLUS ;
 int EBUSY ;
 scalar_t__ LED_AUTO ;
 scalar_t__ LED_OFF ;


 void* OV6xx0_SID ;
 void* OV7xx0_SID ;
 void* OV8xx0_SID ;
 int PDEBUG (int,char*) ;
 int R511_SYS_CUST_ID ;



 int camlist ;
 int dev_info (int *,char*,int) ;
 int dev_warn (int *,char*) ;
 int dumppix ;
 int err (char*) ;
 scalar_t__ init_ov_sensor (struct usb_ov511*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ ov518_init_compression (struct usb_ov511*) ;
 int ov518_set_packet_size (struct usb_ov511*,int ) ;
 int ov51x_led_control (struct usb_ov511*,int) ;
 scalar_t__ ov51x_set_slave_ids (struct usb_ov511*,void*) ;
 scalar_t__ ov6xx0_configure (struct usb_ov511*) ;
 scalar_t__ ov7xx0_configure (struct usb_ov511*) ;
 int reg_r (struct usb_ov511*,int ) ;
 scalar_t__ reg_w (struct usb_ov511*,int,int) ;
 scalar_t__ reg_w_mask (struct usb_ov511*,int,int,int) ;
 int snapshot ;
 int symbolic (int ,int ) ;
 struct usb_host_interface* usb_altnum_to_altsetting (struct usb_interface*,int) ;
 struct usb_interface* usb_ifnum_to_if (TYPE_3__*,int ) ;
 scalar_t__ write_regvals (struct usb_ov511*,struct ov511_regvals*) ;

__attribute__((used)) static int
ov518_configure(struct usb_ov511 *ov)
{

 static struct ov511_regvals aRegvalsInit518[] = {
  { 131, 129, 0x40 },
  { 131, 130, 0xe1 },
  { 131, 129, 0x3e },
  { 131, 130, 0xe1 },
  { 131, 129, 0x00 },
  { 131, 130, 0xe1 },
  { 131, 0x46, 0x00 },
  { 131, 0x5d, 0x03 },
  { 132, 0x0, 0x00},
 };

 static struct ov511_regvals aRegvalsNorm518[] = {
  { 131, 128, 0x02 },
  { 131, 128, 0x01 },
  { 131, 0x31, 0x0f },
  { 131, 0x5d, 0x03 },
  { 131, 0x24, 0x9f },
  { 131, 0x25, 0x90 },
  { 131, 0x20, 0x00 },
  { 131, 0x51, 0x04 },
  { 131, 0x71, 0x19 },
  { 132, 0x0, 0x00 },
 };

 static struct ov511_regvals aRegvalsNorm518Plus[] = {
  { 131, 128, 0x02 },
  { 131, 128, 0x01 },
  { 131, 0x31, 0x0f },
  { 131, 0x5d, 0x03 },
  { 131, 0x24, 0x9f },
  { 131, 0x25, 0x90 },
  { 131, 0x20, 0x60 },
  { 131, 0x51, 0x02 },
  { 131, 0x71, 0x19 },
  { 131, 0x40, 0xff },
  { 131, 0x41, 0x42 },
  { 131, 0x46, 0x00 },
  { 131, 0x33, 0x04 },
  { 131, 0x21, 0x19 },
  { 131, 0x3f, 0x10 },
  { 132, 0x0, 0x00 },
 };

 PDEBUG(4, "");


 dev_info(&ov->dev->dev, "Device revision %d\n",
   0x1F & reg_r(ov, R511_SYS_CUST_ID));


 ov->desc = symbolic(camlist, 0);

 if (write_regvals(ov, aRegvalsInit518))
  goto error;


 if (reg_w_mask(ov, 0x57, 0x00, 0x02) < 0)
  goto error;


 if (ov->led_policy == LED_OFF || ov->led_policy == LED_AUTO)
  ov51x_led_control(ov, 0);
 else
  ov51x_led_control(ov, 1);



 if (!dumppix && !ov->compress) {
  ov->compress = 1;
  dev_warn(&ov->dev->dev,
    "Compression required with OV518...enabling\n");
 }

 if (ov->bridge == BRG_OV518) {
  if (write_regvals(ov, aRegvalsNorm518))
   goto error;
 } else if (ov->bridge == BRG_OV518PLUS) {
  if (write_regvals(ov, aRegvalsNorm518Plus))
   goto error;
 } else {
  err("Invalid bridge");
 }

 if (reg_w(ov, 0x2f, 0x80) < 0)
  goto error;

 if (ov518_init_compression(ov))
  goto error;

 if (ov->bridge == BRG_OV518)
 {
  struct usb_interface *ifp;
  struct usb_host_interface *alt;
  __u16 mxps = 0;

  ifp = usb_ifnum_to_if(ov->dev, 0);
  if (ifp) {
   alt = usb_altnum_to_altsetting(ifp, 7);
   if (alt)
    mxps = le16_to_cpu(alt->endpoint[0].desc.wMaxPacketSize);
  }


  if (mxps == 897)
   ov->packet_numbering = 1;
  else
   ov->packet_numbering = 0;
 } else {

  ov->packet_numbering = 1;
 }

 ov518_set_packet_size(ov, 0);

 ov->snap_enabled = snapshot;


 ov->primary_i2c_slave = OV7xx0_SID;
 if (ov51x_set_slave_ids(ov, OV7xx0_SID) < 0)
  goto error;





 if (init_ov_sensor(ov) < 0) {

  ov->primary_i2c_slave = OV6xx0_SID;
  if (ov51x_set_slave_ids(ov, OV6xx0_SID) < 0)
   goto error;

  if (init_ov_sensor(ov) < 0) {

   ov->primary_i2c_slave = OV8xx0_SID;
   if (ov51x_set_slave_ids(ov, OV8xx0_SID) < 0)
    goto error;

   if (init_ov_sensor(ov) < 0) {
    err("Can't determine sensor slave IDs");
    goto error;
   } else {
    err("Detected unsupported OV8xx0 sensor");
    goto error;
   }
  } else {
   if (ov6xx0_configure(ov) < 0) {
    err("Failed to configure OV6xx0");
    goto error;
   }
  }
 } else {
  if (ov7xx0_configure(ov) < 0) {
   err("Failed to configure OV7xx0");
   goto error;
  }
 }

 ov->maxwidth = 352;
 ov->maxheight = 288;


 ov->minwidth = 160;
 ov->minheight = 120;

 return 0;

error:
 err("OV518 Config failed");

 return -EBUSY;
}
