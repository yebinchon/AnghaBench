
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {scalar_t__ iso_init; scalar_t__ error_status; int udev; } ;


 scalar_t__ EPIPE ;
 int PWC_DEBUG_OPEN (char*) ;
 int pwc_iso_free (struct pwc_device*) ;
 int pwc_iso_stop (struct pwc_device*) ;
 int usb_set_interface (int ,int ,int ) ;

void pwc_isoc_cleanup(struct pwc_device *pdev)
{
 PWC_DEBUG_OPEN(">> pwc_isoc_cleanup()\n");
 if (pdev == ((void*)0))
  return;
 if (pdev->iso_init == 0)
  return;

 pwc_iso_stop(pdev);
 pwc_iso_free(pdev);




 if (pdev->error_status != EPIPE) {
  PWC_DEBUG_OPEN("Setting alternate interface 0.\n");
  usb_set_interface(pdev->udev, 0, 0);
 }

 pdev->iso_init = 0;
 PWC_DEBUG_OPEN("<< pwc_isoc_cleanup()\n");
}
