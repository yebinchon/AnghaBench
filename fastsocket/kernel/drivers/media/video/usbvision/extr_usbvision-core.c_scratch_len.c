
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int scratch_write_ptr; int scratch_read_ptr; } ;


 int DBG_SCRATCH ;
 int PDEBUG (int ,char*,int) ;
 scalar_t__ scratch_buf_size ;

__attribute__((used)) static int scratch_len(struct usb_usbvision *usbvision)
{
 int len = usbvision->scratch_write_ptr - usbvision->scratch_read_ptr;

 if (len < 0)
  len += scratch_buf_size;
 PDEBUG(DBG_SCRATCH, "scratch_len() = %d\n", len);

 return len;
}
