
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int scratch_read_ptr; int scratch_write_ptr; } ;


 int DBG_SCRATCH ;
 int PDEBUG (int ,char*,int) ;
 scalar_t__ scratch_buf_size ;

__attribute__((used)) static int scratch_free(struct usb_usbvision *usbvision)
{
 int free = usbvision->scratch_read_ptr - usbvision->scratch_write_ptr;
 if (free <= 0)
  free += scratch_buf_size;
 if (free) {
  free -= 1;

 }
 PDEBUG(DBG_SCRATCH, "return %d\n", free);

 return free;
}
