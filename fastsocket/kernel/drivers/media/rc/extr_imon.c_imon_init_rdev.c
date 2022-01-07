
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct rc_dev {int allowed_protos; int map_name; int driver_name; int change_protocol; int driver_type; struct imon_context* priv; TYPE_1__ dev; int input_id; int input_phys; int input_name; } ;
struct imon_context {int vendor; int product; int rc_type; int dev; int usb_tx_buf; int usbdev_intf0; int phys_rdev; int name_rdev; } ;
typedef int fp_packet ;


 int MOD_NAME ;
 int RC_DRIVER_SCANCODE ;
 int RC_MAP_IMON_MCE ;
 int RC_MAP_IMON_PAD ;
 int RC_TYPE_OTHER ;
 int RC_TYPE_RC6 ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int imon_get_ffdc_type (struct imon_context*) ;
 int imon_ir_change_protocol ;
 int imon_set_display_type (struct imon_context*) ;
 int memcpy (int ,unsigned char const**,int) ;
 struct rc_dev* rc_allocate_device () ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;
 int send_packet (struct imon_context*) ;
 int snprintf (int ,int,char*,int,int) ;
 int strlcat (int ,char*,int) ;
 int usb_make_path (int ,int ,int) ;
 int usb_to_input_id (int ,int *) ;

__attribute__((used)) static struct rc_dev *imon_init_rdev(struct imon_context *ictx)
{
 struct rc_dev *rdev;
 int ret;
 const unsigned char fp_packet[] = { 0x40, 0x00, 0x00, 0x00,
         0x00, 0x00, 0x00, 0x88 };

 rdev = rc_allocate_device();
 if (!rdev) {
  dev_err(ictx->dev, "remote control dev allocation failed\n");
  goto out;
 }

 snprintf(ictx->name_rdev, sizeof(ictx->name_rdev),
   "iMON Remote (%04x:%04x)", ictx->vendor, ictx->product);
 usb_make_path(ictx->usbdev_intf0, ictx->phys_rdev,
        sizeof(ictx->phys_rdev));
 strlcat(ictx->phys_rdev, "/input0", sizeof(ictx->phys_rdev));

 rdev->input_name = ictx->name_rdev;
 rdev->input_phys = ictx->phys_rdev;
 usb_to_input_id(ictx->usbdev_intf0, &rdev->input_id);
 rdev->dev.parent = ictx->dev;

 rdev->priv = ictx;
 rdev->driver_type = RC_DRIVER_SCANCODE;
 rdev->allowed_protos = RC_TYPE_OTHER | RC_TYPE_RC6;
 rdev->change_protocol = imon_ir_change_protocol;
 rdev->driver_name = MOD_NAME;


 memcpy(ictx->usb_tx_buf, &fp_packet, sizeof(fp_packet));
 ret = send_packet(ictx);

 if (ret)
  dev_info(ictx->dev, "panel buttons/knobs setup failed\n");

 if (ictx->product == 0xffdc) {
  imon_get_ffdc_type(ictx);
  rdev->allowed_protos = ictx->rc_type;
 }

 imon_set_display_type(ictx);

 if (ictx->rc_type == RC_TYPE_RC6)
  rdev->map_name = RC_MAP_IMON_MCE;
 else
  rdev->map_name = RC_MAP_IMON_PAD;

 ret = rc_register_device(rdev);
 if (ret < 0) {
  dev_err(ictx->dev, "remote input dev register failed\n");
  goto out;
 }

 return rdev;

out:
 rc_free_device(rdev);
 return ((void*)0);
}
