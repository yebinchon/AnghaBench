
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_12__ {int kobj; } ;
struct usb_interface {TYPE_10__ dev; TYPE_3__* altsetting; } ;
struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_18__ {TYPE_10__* parent; } ;
struct input_dev {char* name; scalar_t__* absmax; int keybit; int mscbit; int relbit; int absbit; int evbit; int close; int open; TYPE_6__ dev; int id; int phys; } ;
struct TYPE_16__ {int programmableDelay; int jitterDelay; int stylusButtonLower; int stylusButtonUpper; int mouseButtonRight; int mouseButtonMiddle; int mouseButtonLeft; void* yTilt; void* xTilt; int toolMode; int coordinateMode; int pointerMode; } ;
struct TYPE_17__ {int usbPath; } ;
struct aiptek {int lastMacro; int data_dma; int data; TYPE_7__* urb; struct input_dev* inputdev; TYPE_4__ curSetting; struct usb_device* usbdev; TYPE_5__ features; TYPE_4__ newSetting; scalar_t__ previousJitterable; scalar_t__ endDelay; scalar_t__ inDelay; int ifnum; } ;
struct TYPE_19__ {int transfer_flags; int transfer_dma; } ;
struct TYPE_14__ {int bInterfaceNumber; } ;
struct TYPE_15__ {TYPE_1__* endpoint; TYPE_2__ desc; } ;
struct TYPE_13__ {struct usb_endpoint_descriptor desc; } ;


 size_t ABS_PRESSURE ;
 size_t ABS_TILT_X ;
 size_t ABS_TILT_Y ;
 size_t ABS_WHEEL ;
 size_t ABS_X ;
 size_t ABS_Y ;
 int AIPTEK_COORDINATE_ABSOLUTE_MODE ;
 int AIPTEK_MOUSE_LEFT_BUTTON ;
 int AIPTEK_MOUSE_MIDDLE_BUTTON ;
 int AIPTEK_MOUSE_RIGHT_BUTTON ;
 int AIPTEK_PACKET_LENGTH ;
 int AIPTEK_POINTER_EITHER_MODE ;
 int AIPTEK_PROGRAMMABLE_DELAY_100 ;
 int AIPTEK_PROGRAMMABLE_DELAY_200 ;
 int AIPTEK_PROGRAMMABLE_DELAY_25 ;
 int AIPTEK_PROGRAMMABLE_DELAY_300 ;
 int AIPTEK_PROGRAMMABLE_DELAY_400 ;
 int AIPTEK_PROGRAMMABLE_DELAY_50 ;
 int AIPTEK_STYLUS_LOWER_BUTTON ;
 int AIPTEK_STYLUS_UPPER_BUTTON ;
 void* AIPTEK_TILT_DISABLE ;
 int AIPTEK_TILT_MAX ;
 int AIPTEK_TILT_MIN ;
 int AIPTEK_TOOL_BUTTON_PEN_MODE ;
 int AIPTEK_WHEEL_MAX ;
 int AIPTEK_WHEEL_MIN ;
 int ARRAY_SIZE (int*) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int MSC_SERIAL ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int __set_bit (int,int ) ;
 int* absEvents ;
 int aiptek_attribute_group ;
 int aiptek_close ;
 int aiptek_irq ;
 int aiptek_open ;
 int aiptek_program_tablet (struct aiptek*) ;
 int* buttonEvents ;
 int dev_info (TYPE_10__*,char*,...) ;
 int dev_warn (TYPE_10__*,char*,...) ;
 int* eventTypes ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,size_t,int ,int,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct aiptek*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int jitterDelay ;
 int kfree (struct aiptek*) ;
 struct aiptek* kzalloc (int,int ) ;
 int* macroKeyEvents ;
 void* programmableDelay ;
 int* relEvents ;
 int strlcat (int ,char*,int) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 TYPE_7__* usb_alloc_urb (int ,int ) ;
 int usb_buffer_alloc (struct usb_device*,int ,int ,int *) ;
 int usb_buffer_free (struct usb_device*,int ,int ,int ) ;
 int usb_fill_int_urb (TYPE_7__*,struct usb_device*,int ,int ,int,int ,struct aiptek*,int ) ;
 int usb_free_urb (TYPE_7__*) ;
 int usb_make_path (struct usb_device*,int ,int) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct aiptek*) ;
 int usb_to_input_id (struct usb_device*,int *) ;

__attribute__((used)) static int
aiptek_probe(struct usb_interface *intf, const struct usb_device_id *id)
{
 struct usb_device *usbdev = interface_to_usbdev(intf);
 struct usb_endpoint_descriptor *endpoint;
 struct aiptek *aiptek;
 struct input_dev *inputdev;
 int i;
 int speeds[] = { 0,
  AIPTEK_PROGRAMMABLE_DELAY_50,
  AIPTEK_PROGRAMMABLE_DELAY_400,
  AIPTEK_PROGRAMMABLE_DELAY_25,
  AIPTEK_PROGRAMMABLE_DELAY_100,
  AIPTEK_PROGRAMMABLE_DELAY_200,
  AIPTEK_PROGRAMMABLE_DELAY_300
 };
 int err = -ENOMEM;







 speeds[0] = programmableDelay;

 aiptek = kzalloc(sizeof(struct aiptek), GFP_KERNEL);
 inputdev = input_allocate_device();
 if (!aiptek || !inputdev) {
  dev_warn(&intf->dev,
    "cannot allocate memory or input device\n");
  goto fail1;
        }

 aiptek->data = usb_buffer_alloc(usbdev, AIPTEK_PACKET_LENGTH,
     GFP_ATOMIC, &aiptek->data_dma);
        if (!aiptek->data) {
  dev_warn(&intf->dev, "cannot allocate usb buffer\n");
  goto fail1;
 }

 aiptek->urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!aiptek->urb) {
         dev_warn(&intf->dev, "cannot allocate urb\n");
  goto fail2;
 }

 aiptek->inputdev = inputdev;
 aiptek->usbdev = usbdev;
 aiptek->ifnum = intf->altsetting[0].desc.bInterfaceNumber;
 aiptek->inDelay = 0;
 aiptek->endDelay = 0;
 aiptek->previousJitterable = 0;
 aiptek->lastMacro = -1;







 aiptek->curSetting.pointerMode = AIPTEK_POINTER_EITHER_MODE;
 aiptek->curSetting.coordinateMode = AIPTEK_COORDINATE_ABSOLUTE_MODE;
 aiptek->curSetting.toolMode = AIPTEK_TOOL_BUTTON_PEN_MODE;
 aiptek->curSetting.xTilt = AIPTEK_TILT_DISABLE;
 aiptek->curSetting.yTilt = AIPTEK_TILT_DISABLE;
 aiptek->curSetting.mouseButtonLeft = AIPTEK_MOUSE_LEFT_BUTTON;
 aiptek->curSetting.mouseButtonMiddle = AIPTEK_MOUSE_MIDDLE_BUTTON;
 aiptek->curSetting.mouseButtonRight = AIPTEK_MOUSE_RIGHT_BUTTON;
 aiptek->curSetting.stylusButtonUpper = AIPTEK_STYLUS_UPPER_BUTTON;
 aiptek->curSetting.stylusButtonLower = AIPTEK_STYLUS_LOWER_BUTTON;
 aiptek->curSetting.jitterDelay = jitterDelay;
 aiptek->curSetting.programmableDelay = programmableDelay;



 aiptek->newSetting = aiptek->curSetting;
 usb_make_path(usbdev, aiptek->features.usbPath,
   sizeof(aiptek->features.usbPath));
 strlcat(aiptek->features.usbPath, "/input0",
  sizeof(aiptek->features.usbPath));




 inputdev->name = "Aiptek";
 inputdev->phys = aiptek->features.usbPath;
 usb_to_input_id(usbdev, &inputdev->id);
 inputdev->dev.parent = &intf->dev;

 input_set_drvdata(inputdev, aiptek);

 inputdev->open = aiptek_open;
 inputdev->close = aiptek_close;




 for (i = 0; i < ARRAY_SIZE(eventTypes); ++i)
         __set_bit(eventTypes[i], inputdev->evbit);

 for (i = 0; i < ARRAY_SIZE(absEvents); ++i)
         __set_bit(absEvents[i], inputdev->absbit);

 for (i = 0; i < ARRAY_SIZE(relEvents); ++i)
         __set_bit(relEvents[i], inputdev->relbit);

 __set_bit(MSC_SERIAL, inputdev->mscbit);


 for (i = 0; i < ARRAY_SIZE(buttonEvents); ++i)
  __set_bit(buttonEvents[i], inputdev->keybit);

 for (i = 0; i < ARRAY_SIZE(macroKeyEvents); ++i)
  __set_bit(macroKeyEvents[i], inputdev->keybit);







 input_set_abs_params(inputdev, ABS_X, 0, 2999, 0, 0);
 input_set_abs_params(inputdev, ABS_Y, 0, 2249, 0, 0);
 input_set_abs_params(inputdev, ABS_PRESSURE, 0, 511, 0, 0);
 input_set_abs_params(inputdev, ABS_TILT_X, AIPTEK_TILT_MIN, AIPTEK_TILT_MAX, 0, 0);
 input_set_abs_params(inputdev, ABS_TILT_Y, AIPTEK_TILT_MIN, AIPTEK_TILT_MAX, 0, 0);
 input_set_abs_params(inputdev, ABS_WHEEL, AIPTEK_WHEEL_MIN, AIPTEK_WHEEL_MAX - 1, 0, 0);

 endpoint = &intf->altsetting[0].endpoint[0].desc;




 usb_fill_int_urb(aiptek->urb,
    aiptek->usbdev,
    usb_rcvintpipe(aiptek->usbdev,
     endpoint->bEndpointAddress),
    aiptek->data, 8, aiptek_irq, aiptek,
    endpoint->bInterval);

 aiptek->urb->transfer_dma = aiptek->data_dma;
 aiptek->urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
 for (i = 0; i < ARRAY_SIZE(speeds); ++i) {
  aiptek->curSetting.programmableDelay = speeds[i];
  (void)aiptek_program_tablet(aiptek);
  if (aiptek->inputdev->absmax[ABS_X] > 0) {
   dev_info(&intf->dev,
     "Aiptek using %d ms programming speed\n",
     aiptek->curSetting.programmableDelay);
   break;
  }
 }



 if (i == ARRAY_SIZE(speeds)) {
  dev_info(&intf->dev,
    "Aiptek tried all speeds, no sane response\n");
  goto fail2;
 }



 usb_set_intfdata(intf, aiptek);



 err = sysfs_create_group(&intf->dev.kobj, &aiptek_attribute_group);
 if (err) {
  dev_warn(&intf->dev, "cannot create sysfs group err: %d\n",
    err);
  goto fail3;
        }



 err = input_register_device(aiptek->inputdev);
 if (err) {
  dev_warn(&intf->dev,
    "input_register_device returned err: %d\n", err);
  goto fail4;
        }
 return 0;

 fail4: sysfs_remove_group(&intf->dev.kobj, &aiptek_attribute_group);
 fail3: usb_free_urb(aiptek->urb);
 fail2: usb_buffer_free(usbdev, AIPTEK_PACKET_LENGTH, aiptek->data,
   aiptek->data_dma);
 fail1: usb_set_intfdata(intf, ((void*)0));
 input_free_device(inputdev);
 kfree(aiptek);
 return err;
}
