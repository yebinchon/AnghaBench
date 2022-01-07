
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct usb_usbvision {TYPE_1__* frame; int outqueue; int inqueue; } ;
struct TYPE_2__ {scalar_t__ bytes_read; int grabstate; } ;


 int INIT_LIST_HEAD (int *) ;
 size_t USBVISION_NUMFRAMES ;
 int frame_state_unused ;

void usbvision_empty_framequeues(struct usb_usbvision *usbvision)
{
 u32 i;

 INIT_LIST_HEAD(&(usbvision->inqueue));
 INIT_LIST_HEAD(&(usbvision->outqueue));

 for (i = 0; i < USBVISION_NUMFRAMES; i++) {
  usbvision->frame[i].grabstate = frame_state_unused;
  usbvision->frame[i].bytes_read = 0;
 }
}
