
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct pwc_device {TYPE_1__* sbuf; } ;
struct TYPE_2__ {struct urb* urb; } ;


 int MAX_ISO_BUFS ;
 int PWC_DEBUG_MEMORY (char*) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static void pwc_iso_free(struct pwc_device *pdev)
{
 int i;


 for (i = 0; i < MAX_ISO_BUFS; i++) {
  struct urb *urb;

  urb = pdev->sbuf[i].urb;
  if (urb) {
   PWC_DEBUG_MEMORY("Freeing URB\n");
   usb_free_urb(urb);
   pdev->sbuf[i].urb = ((void*)0);
  }
 }
}
