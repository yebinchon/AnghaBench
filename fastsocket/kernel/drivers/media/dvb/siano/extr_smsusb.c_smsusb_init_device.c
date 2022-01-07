
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct smsusb_device_t {int coredev; TYPE_3__* surbs; TYPE_4__* udev; int buffer_size; int response_alignment; } ;
struct smsdevice_params_t {int device_type; int devpath; struct smsusb_device_t* context; int sendrequest_handler; int num_buffers; int buffer_size; int * device; int flags; int detectmode_handler; int setmode_handler; } ;
struct SmsMsgHdr_ST {int dummy; } ;
typedef int params ;
struct TYPE_11__ {int type; } ;
struct TYPE_10__ {int dev; TYPE_2__** ep_in; } ;
struct TYPE_9__ {int urb; struct smsusb_device_t* dev; } ;
struct TYPE_7__ {int wMaxPacketSize; } ;
struct TYPE_8__ {TYPE_1__ desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_BUFFERS ;
 int MAX_URBS ;
 int SMS_DEVICE_FAMILY2 ;




 int USB1_BUFFER_SIZE ;
 int USB2_BUFFER_SIZE ;
 TYPE_4__* interface_to_usbdev (struct usb_interface*) ;
 struct smsusb_device_t* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int memset (struct smsdevice_params_t*,int ,int) ;
 int sms_err (char*,...) ;
 TYPE_5__* sms_get_board (int) ;
 int sms_info (char*,...) ;
 int smscore_register_device (struct smsdevice_params_t*,int *) ;
 int smscore_set_board_id (int ,int) ;
 int smscore_start_device (int ) ;
 int smsusb1_detectmode ;
 int smsusb1_setmode ;
 int smsusb_sendrequest ;
 int smsusb_start_streaming (struct smsusb_device_t*) ;
 int smsusb_term_device (struct usb_interface*) ;
 int usb_init_urb (int *) ;
 int usb_make_path (TYPE_4__*,int ,int) ;
 int usb_set_intfdata (struct usb_interface*,struct smsusb_device_t*) ;

__attribute__((used)) static int smsusb_init_device(struct usb_interface *intf, int board_id)
{
 struct smsdevice_params_t params;
 struct smsusb_device_t *dev;
 int i, rc;


 dev = kzalloc(sizeof(struct smsusb_device_t), GFP_KERNEL);
 if (!dev) {
  sms_err("kzalloc(sizeof(struct smsusb_device_t) failed");
  return -ENOMEM;
 }

 memset(&params, 0, sizeof(params));
 usb_set_intfdata(intf, dev);
 dev->udev = interface_to_usbdev(intf);

 params.device_type = sms_get_board(board_id)->type;

 switch (params.device_type) {
 case 129:
  dev->buffer_size = USB1_BUFFER_SIZE;

  params.setmode_handler = smsusb1_setmode;
  params.detectmode_handler = smsusb1_detectmode;
  break;
 default:
  sms_err("Unspecified sms device type!");

 case 131:
 case 130:
 case 128:
  dev->buffer_size = USB2_BUFFER_SIZE;
  dev->response_alignment =
      le16_to_cpu(dev->udev->ep_in[1]->desc.wMaxPacketSize) -
      sizeof(struct SmsMsgHdr_ST);

  params.flags |= SMS_DEVICE_FAMILY2;
  break;
 }

 params.device = &dev->udev->dev;
 params.buffer_size = dev->buffer_size;
 params.num_buffers = MAX_BUFFERS;
 params.sendrequest_handler = smsusb_sendrequest;
 params.context = dev;
 usb_make_path(dev->udev, params.devpath, sizeof(params.devpath));


 rc = smscore_register_device(&params, &dev->coredev);
 if (rc < 0) {
  sms_err("smscore_register_device(...) failed, rc %d", rc);
  smsusb_term_device(intf);
  return rc;
 }

 smscore_set_board_id(dev->coredev, board_id);


 for (i = 0; i < MAX_URBS; i++) {
  dev->surbs[i].dev = dev;
  usb_init_urb(&dev->surbs[i].urb);
 }

 sms_info("smsusb_start_streaming(...).");
 rc = smsusb_start_streaming(dev);
 if (rc < 0) {
  sms_err("smsusb_start_streaming(...) failed");
  smsusb_term_device(intf);
  return rc;
 }

 rc = smscore_start_device(dev->coredev);
 if (rc < 0) {
  sms_err("smscore_start_device(...) failed");
  smsusb_term_device(intf);
  return rc;
 }

 sms_info("device %p created", dev);

 return rc;
}
