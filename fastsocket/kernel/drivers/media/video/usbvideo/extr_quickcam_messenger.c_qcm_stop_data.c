
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uvd {int last_error; int ifaceAltInactive; int iface; TYPE_2__* dev; int remove_pending; TYPE_1__* sbuf; scalar_t__ streaming; scalar_t__ user_data; } ;
struct qcm {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int urb; } ;


 int USBVIDEO_NUMSBUF ;
 int dev_warn (int *,char*) ;
 int err (char*,int) ;
 int qcm_camera_off (struct uvd*) ;
 int qcm_stop_int_data (struct qcm*) ;
 int usb_kill_urb (int ) ;
 int usb_set_interface (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void qcm_stop_data(struct uvd *uvd)
{
 struct qcm *cam = (struct qcm *) uvd->user_data;
 int i, j;
 int ret;

 if ((uvd == ((void*)0)) || (!uvd->streaming) || (uvd->dev == ((void*)0)))
  return;

 ret = qcm_camera_off(uvd);
 if (ret)
  dev_warn(&uvd->dev->dev, "couldn't turn the cam off.\n");

 uvd->streaming = 0;


 for (i=0; i < USBVIDEO_NUMSBUF; i++)
  usb_kill_urb(uvd->sbuf[i].urb);

 qcm_stop_int_data(cam);

 if (!uvd->remove_pending) {

  j = usb_set_interface(uvd->dev, uvd->iface,
     uvd->ifaceAltInactive);
  if (j < 0) {
   err("usb_set_interface() error %d.", j);
   uvd->last_error = j;
  }
 }
}
