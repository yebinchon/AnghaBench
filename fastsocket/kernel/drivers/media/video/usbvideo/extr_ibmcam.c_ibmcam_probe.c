
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct uvd {int debug; int iface; int ifaceAltInactive; int ifaceAltActive; unsigned char video_endp; int iso_packet_len; long paletteBits; long defaultPalette; int videosize; int canvas; struct usb_device* dev; int flags; } ;
struct usb_interface {int num_altsetting; struct usb_host_interface* altsetting; } ;
struct TYPE_6__ {int bInterfaceNumber; int bAlternateSetting; int bNumEndpoints; } ;
struct usb_host_interface {TYPE_3__* endpoint; TYPE_2__ desc; } ;
struct usb_endpoint_descriptor {unsigned char bEndpointAddress; int wMaxPacketSize; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_5__ {int bNumConfigurations; int bcdDevice; int idProduct; } ;
struct usb_device {int dev; TYPE_1__ descriptor; } ;
typedef int __u8 ;
struct TYPE_8__ {int camera_model; scalar_t__ initialized; } ;
struct TYPE_7__ {struct usb_endpoint_descriptor desc; } ;


 int ENODEV ;





 TYPE_4__* IBMCAM_T (struct uvd*) ;

 int RESTRICT_TO_RANGE (int,int,int) ;




 int SIZE_352x240 ;




 int VIDEOSIZE (int,int) ;
 long VIDEO_PALETTE_RGB24 ;
 int assert (int ) ;
 int cams ;
 int debug ;
 int dev_info (int *,char*,...) ;
 int err (char*,...) ;
 int flags ;
 int framerate ;
 int ibmcam_configure_video (struct uvd*) ;
 int ibmcam_size_to_videosize (int) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int le16_to_cpu (int ) ;
 int lighting ;
 int size ;
 scalar_t__ usb_endpoint_dir_out (struct usb_endpoint_descriptor const*) ;
 int usb_endpoint_xfer_isoc (struct usb_endpoint_descriptor const*) ;
 int usb_set_intfdata (struct usb_interface*,struct uvd*) ;
 struct uvd* usbvideo_AllocateDevice (int ) ;
 int usbvideo_RegisterVideoDevice (struct uvd*) ;

__attribute__((used)) static int ibmcam_probe(struct usb_interface *intf, const struct usb_device_id *devid)
{
 struct usb_device *dev = interface_to_usbdev(intf);
 struct uvd *uvd = ((void*)0);
 int ix, i, nas, model=0, canvasX=0, canvasY=0;
 int actInterface=-1, inactInterface=-1, maxPS=0;
 __u8 ifnum = intf->altsetting->desc.bInterfaceNumber;
 unsigned char video_ep = 0;

 if (debug >= 1)
  dev_info(&dev->dev, "ibmcam_probe(%p,%u.)\n", intf, ifnum);


 if (dev->descriptor.bNumConfigurations != 1)
  return -ENODEV;


 switch (le16_to_cpu(dev->descriptor.bcdDevice)) {
 case 0x0002:
  if (ifnum != 2)
   return -ENODEV;
  model = 141;
  break;
 case 0x030A:
  if (ifnum != 0)
   return -ENODEV;
  if ((le16_to_cpu(dev->descriptor.idProduct) == 136) ||
      (le16_to_cpu(dev->descriptor.idProduct) == 128))
   model = 138;
  else
   model = 140;
  break;
 case 0x0301:
  if (ifnum != 0)
   return -ENODEV;
  model = 139;
  break;
 default:
  err("IBM camera with revision 0x%04x is not supported.",
   le16_to_cpu(dev->descriptor.bcdDevice));
  return -ENODEV;
 }


 do {
  char *brand = ((void*)0);
  switch (le16_to_cpu(dev->descriptor.idProduct)) {
  case 136:
   brand = "IBM NetCamera";
   break;
  case 129:
   brand = "Veo Stingray [800C]";
   break;
  case 128:
   brand = "Veo Stingray [800D]";
   break;
  case 137:
  default:
   brand = "IBM PC Camera";
   break;
  }
  dev_info(&dev->dev,
    "%s USB camera found (model %d, rev. 0x%04x)\n",
    brand, model, le16_to_cpu(dev->descriptor.bcdDevice));
 } while (0);


 nas = intf->num_altsetting;
 if (debug > 0)
  dev_info(&dev->dev, "Number of alternate settings=%d.\n",
    nas);
 if (nas < 2) {
  err("Too few alternate settings for this camera!");
  return -ENODEV;
 }

 for (ix=0; ix < nas; ix++) {
  const struct usb_host_interface *interface;
  const struct usb_endpoint_descriptor *endpoint;

  interface = &intf->altsetting[ix];
  i = interface->desc.bAlternateSetting;
  if (interface->desc.bNumEndpoints != 1) {
   err("Interface %d. has %u. endpoints!",
       ifnum, (unsigned)(interface->desc.bNumEndpoints));
   return -ENODEV;
  }
  endpoint = &interface->endpoint[0].desc;
  if (video_ep == 0)
   video_ep = endpoint->bEndpointAddress;
  else if (video_ep != endpoint->bEndpointAddress) {
   err("Alternate settings have different endpoint addresses!");
   return -ENODEV;
  }
  if (!usb_endpoint_xfer_isoc(endpoint)) {
   err("Interface %d. has non-ISO endpoint!", ifnum);
   return -ENODEV;
  }
  if (usb_endpoint_dir_out(endpoint)) {
   err("Interface %d. has ISO OUT endpoint!", ifnum);
   return -ENODEV;
  }
  if (le16_to_cpu(endpoint->wMaxPacketSize) == 0) {
   if (inactInterface < 0)
    inactInterface = i;
   else {
    err("More than one inactive alt. setting!");
    return -ENODEV;
   }
  } else {
   if (actInterface < 0) {
    actInterface = i;
    maxPS = le16_to_cpu(endpoint->wMaxPacketSize);
    if (debug > 0)
     dev_info(&dev->dev,
       "Active setting=%d. "
       "maxPS=%d.\n", i, maxPS);
   } else
    err("More than one active alt. setting! Ignoring #%d.", i);
  }
 }
 if ((maxPS <= 0) || (actInterface < 0) || (inactInterface < 0)) {
  err("Failed to recognize the camera!");
  return -ENODEV;
 }


 switch (model) {
 case 141:
  RESTRICT_TO_RANGE(lighting, 0, 2);
  RESTRICT_TO_RANGE(size, 135, 131);
  if (framerate < 0)
   framerate = 2;
  canvasX = 352;
  canvasY = 288;
  break;
 case 140:
  RESTRICT_TO_RANGE(lighting, 0, 15);
  RESTRICT_TO_RANGE(size, 133, SIZE_352x240);
  if (framerate < 0)
   framerate = 2;
  canvasX = 352;
  canvasY = 240;
  break;
 case 139:
  RESTRICT_TO_RANGE(lighting, 0, 15);
  switch (size) {
  case 134:
   canvasX = 160;
   canvasY = 120;
   if (framerate < 0)
    framerate = 2;
   RESTRICT_TO_RANGE(framerate, 0, 5);
   break;
  default:
   dev_info(&dev->dev, "IBM camera: using 320x240\n");
   size = 132;

  case 132:
   canvasX = 320;
   canvasY = 240;
   if (framerate < 0)
    framerate = 3;
   RESTRICT_TO_RANGE(framerate, 0, 5);
   break;
  case 130:
   canvasX = 640;
   canvasY = 480;
   framerate = 0;
   break;
  }
  break;
 case 138:
  RESTRICT_TO_RANGE(lighting, 0, 2);
  switch (size) {
  case 135:
   canvasX = 128;
   canvasY = 96;
   break;
  case 134:
   canvasX = 160;
   canvasY = 120;
   break;
  default:
   dev_info(&dev->dev, "IBM NetCamera: using 176x144\n");
   size = 133;

  case 133:
   canvasX = 176;
   canvasY = 144;
   break;
  case 132:
   canvasX = 320;
   canvasY = 240;
   break;
  case 131:
   canvasX = 352;
   canvasY = 288;
   break;
  }
  break;
 default:
  err("IBM camera: Model %d. not supported!", model);
  return -ENODEV;
 }

 uvd = usbvideo_AllocateDevice(cams);
 if (uvd != ((void*)0)) {

  uvd->flags = flags;
  uvd->debug = debug;
  uvd->dev = dev;
  uvd->iface = ifnum;
  uvd->ifaceAltInactive = inactInterface;
  uvd->ifaceAltActive = actInterface;
  uvd->video_endp = video_ep;
  uvd->iso_packet_len = maxPS;
  uvd->paletteBits = 1L << VIDEO_PALETTE_RGB24;
  uvd->defaultPalette = VIDEO_PALETTE_RGB24;
  uvd->canvas = VIDEOSIZE(canvasX, canvasY);
  uvd->videosize = ibmcam_size_to_videosize(size);


  assert(IBMCAM_T(uvd) != ((void*)0));
  IBMCAM_T(uvd)->camera_model = model;
  IBMCAM_T(uvd)->initialized = 0;

  ibmcam_configure_video(uvd);

  i = usbvideo_RegisterVideoDevice(uvd);
  if (i != 0) {
   err("usbvideo_RegisterVideoDevice() failed.");
   uvd = ((void*)0);
  }
 }
 usb_set_intfdata (intf, uvd);
 return 0;
}
