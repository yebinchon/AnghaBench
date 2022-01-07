
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvd {int last_error; int ifaceAltInactive; int iface; int * dev; int remove_pending; TYPE_1__* sbuf; scalar_t__ user_data; scalar_t__ streaming; } ;
struct konicawc {int * sts_urb; int * last_data_urb; } ;
struct TYPE_2__ {int urb; } ;


 int USBVIDEO_NUMSBUF ;
 int err (char*,int) ;
 int konicawc_camera_off (struct uvd*) ;
 int usb_kill_urb (int ) ;
 int usb_set_interface (int *,int ,int ) ;

__attribute__((used)) static void konicawc_stop_data(struct uvd *uvd)
{
 int i, j;
 struct konicawc *cam;

 if ((uvd == ((void*)0)) || (!uvd->streaming) || (uvd->dev == ((void*)0)))
  return;

 konicawc_camera_off(uvd);
 uvd->streaming = 0;
 cam = (struct konicawc *)uvd->user_data;
 cam->last_data_urb = ((void*)0);


 for (i=0; i < USBVIDEO_NUMSBUF; i++) {
  usb_kill_urb(uvd->sbuf[i].urb);
  usb_kill_urb(cam->sts_urb[i]);
 }

 if (!uvd->remove_pending) {

  j = usb_set_interface(uvd->dev, uvd->iface, uvd->ifaceAltInactive);
  if (j < 0) {
   err("usb_set_interface() error %d.", j);
   uvd->last_error = j;
  }
 }
}
