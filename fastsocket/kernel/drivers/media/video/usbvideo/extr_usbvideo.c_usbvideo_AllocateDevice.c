
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct uvd {int lock; TYPE_2__ vdev; int dp; scalar_t__ last_error; scalar_t__ remove_pending; scalar_t__ user; scalar_t__ uvd_used; TYPE_1__* sbuf; } ;
struct usbvideo {char* drvName; struct uvd* cam; } ;
struct TYPE_3__ {int * urb; } ;


 int FRAMES_PER_DESC ;
 int GFP_KERNEL ;
 int RingQueue_Initialize (int *) ;
 int USBVIDEO_NUMSBUF ;
 int dbg (char*,int,struct uvd*) ;
 int err (char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (int ,char*,char*) ;
 int * usb_alloc_urb (int ,int ) ;
 int usbvideo_ClientDecModCount (struct uvd*) ;
 int usbvideo_ClientIncModCount (struct uvd*) ;
 int usbvideo_find_struct (struct usbvideo*) ;
 TYPE_2__ usbvideo_template ;

struct uvd *usbvideo_AllocateDevice(struct usbvideo *cams)
{
 int i, devnum;
 struct uvd *uvd = ((void*)0);

 if (cams == ((void*)0)) {
  err("No usbvideo handle?");
  return ((void*)0);
 }

 devnum = usbvideo_find_struct(cams);
 if (devnum == -1) {
  err("IBM USB camera driver: Too many devices!");
  return ((void*)0);
 }
 uvd = &cams->cam[devnum];
 dbg("Device entry #%d. at $%p", devnum, uvd);


 usbvideo_ClientIncModCount(uvd);

 mutex_lock(&uvd->lock);
 for (i=0; i < USBVIDEO_NUMSBUF; i++) {
  uvd->sbuf[i].urb = usb_alloc_urb(FRAMES_PER_DESC, GFP_KERNEL);
  if (uvd->sbuf[i].urb == ((void*)0)) {
   err("usb_alloc_urb(%d.) failed.", FRAMES_PER_DESC);
   uvd->uvd_used = 0;
   uvd = ((void*)0);
   goto allocate_done;
  }
 }
 uvd->user=0;
 uvd->remove_pending = 0;
 uvd->last_error = 0;
 RingQueue_Initialize(&uvd->dp);


 uvd->vdev = usbvideo_template;
 sprintf(uvd->vdev.name, "%.20s USB Camera", cams->drvName);




allocate_done:
 mutex_unlock(&uvd->lock);
 usbvideo_ClientDecModCount(uvd);
 return uvd;
}
