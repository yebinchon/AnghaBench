
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int isocstate; scalar_t__ scratch_headermarker_write_ptr; scalar_t__ scratch_headermarker_read_ptr; scalar_t__ scratch_write_ptr; scalar_t__ scratch_read_ptr; } ;


 int DBG_SCRATCH ;
 int PDEBUG (int ,char*) ;
 int isoc_state_no_frame ;

__attribute__((used)) static void scratch_reset(struct usb_usbvision *usbvision)
{
 PDEBUG(DBG_SCRATCH, "\n");

 usbvision->scratch_read_ptr = 0;
 usbvision->scratch_write_ptr = 0;
 usbvision->scratch_headermarker_read_ptr = 0;
 usbvision->scratch_headermarker_write_ptr = 0;
 usbvision->isocstate = isoc_state_no_frame;
}
