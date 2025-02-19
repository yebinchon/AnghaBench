
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct uvd {int curframe; int last_error; int video_endp; int streaming; TYPE_4__* sbuf; int ifaceAltActive; int iface; scalar_t__ user_data; struct usb_device* dev; } ;
struct usb_interface {int dummy; } ;
struct usb_host_interface {TYPE_2__* endpoint; } ;
struct usb_device {int dummy; } ;
struct urb {int interval; int number_of_packets; int transfer_buffer_length; TYPE_3__* iso_frame_desc; void* complete; int transfer_buffer; void* transfer_flags; void* pipe; struct uvd* context; struct usb_device* dev; } ;
struct konicawc {size_t speed; struct urb** sts_urb; int * last_data_urb; int * sts_buf; } ;
struct TYPE_8__ {struct urb* urb; int data; } ;
struct TYPE_7__ {int offset; int length; } ;
struct TYPE_5__ {int wMaxPacketSize; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;


 int CAMERA_IS_OPERATIONAL (struct uvd*) ;
 int DEBUG (int,char*,int) ;
 int EBUSY ;
 int EFAULT ;
 int ENXIO ;
 int FRAMES_PER_DESC ;
 int GFP_KERNEL ;
 void* URB_ISO_ASAP ;
 int USBVIDEO_NUMSBUF ;
 int err (char*,...) ;
 int konicawc_camera_on (struct uvd*) ;
 void* konicawc_isoc_irq ;
 int le16_to_cpu (int ) ;
 int * spd_to_iface ;
 struct usb_host_interface* usb_altnum_to_altsetting (struct usb_interface*,int ) ;
 struct usb_interface* usb_ifnum_to_if (struct usb_device*,int ) ;
 void* usb_rcvisocpipe (struct usb_device*,int) ;
 int usb_set_interface (struct usb_device*,int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int konicawc_start_data(struct uvd *uvd)
{
 struct usb_device *dev = uvd->dev;
 int i, errFlag;
 struct konicawc *cam = (struct konicawc *)uvd->user_data;
 int pktsz;
 struct usb_interface *intf;
 struct usb_host_interface *interface = ((void*)0);

 intf = usb_ifnum_to_if(dev, uvd->iface);
 if (intf)
  interface = usb_altnum_to_altsetting(intf,
    spd_to_iface[cam->speed]);
 if (!interface)
  return -ENXIO;
 pktsz = le16_to_cpu(interface->endpoint[1].desc.wMaxPacketSize);
 DEBUG(1, "pktsz = %d", pktsz);
 if (!CAMERA_IS_OPERATIONAL(uvd)) {
  err("Camera is not operational");
  return -EFAULT;
 }
 uvd->curframe = -1;
 konicawc_camera_on(uvd);

 i = usb_set_interface(dev, uvd->iface, uvd->ifaceAltActive);
 if (i < 0) {
  err("usb_set_interface error");
  uvd->last_error = i;
  return -EBUSY;
 }


 for (i=0; i < USBVIDEO_NUMSBUF; i++) {
  int j, k;
  struct urb *urb = uvd->sbuf[i].urb;
  urb->dev = dev;
  urb->context = uvd;
  urb->pipe = usb_rcvisocpipe(dev, uvd->video_endp);
  urb->interval = 1;
  urb->transfer_flags = URB_ISO_ASAP;
  urb->transfer_buffer = uvd->sbuf[i].data;
  urb->complete = konicawc_isoc_irq;
  urb->number_of_packets = FRAMES_PER_DESC;
  urb->transfer_buffer_length = pktsz * FRAMES_PER_DESC;
  for (j=k=0; j < FRAMES_PER_DESC; j++, k += pktsz) {
   urb->iso_frame_desc[j].offset = k;
   urb->iso_frame_desc[j].length = pktsz;
  }

  urb = cam->sts_urb[i];
  urb->dev = dev;
  urb->context = uvd;
  urb->pipe = usb_rcvisocpipe(dev, uvd->video_endp-1);
  urb->interval = 1;
  urb->transfer_flags = URB_ISO_ASAP;
  urb->transfer_buffer = cam->sts_buf[i];
  urb->complete = konicawc_isoc_irq;
  urb->number_of_packets = FRAMES_PER_DESC;
  urb->transfer_buffer_length = FRAMES_PER_DESC;
  for (j=0; j < FRAMES_PER_DESC; j++) {
   urb->iso_frame_desc[j].offset = j;
   urb->iso_frame_desc[j].length = 1;
  }
 }

 cam->last_data_urb = ((void*)0);


 for (i=0; i < USBVIDEO_NUMSBUF; i++) {
  errFlag = usb_submit_urb(cam->sts_urb[i], GFP_KERNEL);
  if (errFlag)
   err("usb_submit_isoc(%d) ret %d", i, errFlag);

  errFlag = usb_submit_urb(uvd->sbuf[i].urb, GFP_KERNEL);
  if (errFlag)
   err ("usb_submit_isoc(%d) ret %d", i, errFlag);
 }

 uvd->streaming = 1;
 DEBUG(1, "streaming=1 video_endp=$%02x", uvd->video_endp);
 return 0;
}
