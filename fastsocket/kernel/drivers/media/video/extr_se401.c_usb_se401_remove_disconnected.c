
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_se401 {struct usb_se401* height; struct usb_se401* width; int camera_name; TYPE_3__* dev; int * inturb; TYPE_2__* scratch; TYPE_1__* sbuf; int ** urb; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {struct usb_se401* data; } ;
struct TYPE_4__ {struct usb_se401* data; } ;


 int SE401_NUMSBUF ;
 int SE401_NUMSCRATCH ;
 int dev_info (int *,char*,int ) ;
 int kfree (struct usb_se401*) ;
 int usb_free_urb (int *) ;
 int usb_kill_urb (int *) ;

__attribute__((used)) static void usb_se401_remove_disconnected(struct usb_se401 *se401)
{
 int i;

 se401->dev = ((void*)0);

 for (i = 0; i < SE401_NUMSBUF; i++)
  if (se401->urb[i]) {
   usb_kill_urb(se401->urb[i]);
   usb_free_urb(se401->urb[i]);
   se401->urb[i] = ((void*)0);
   kfree(se401->sbuf[i].data);
  }

 for (i = 0; i < SE401_NUMSCRATCH; i++)
  kfree(se401->scratch[i].data);

 if (se401->inturb) {
  usb_kill_urb(se401->inturb);
  usb_free_urb(se401->inturb);
 }
 dev_info(&se401->dev->dev, "%s disconnected", se401->camera_name);


 kfree(se401->width);
 kfree(se401->height);
 kfree(se401);
}
