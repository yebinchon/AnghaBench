
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int scratch_read_ptr; } ;


 int DBG_SCRATCH ;
 int PDEBUG (int ,char*,int) ;
 int scratch_buf_size ;

__attribute__((used)) static void scratch_rm_old(struct usb_usbvision *usbvision, int len)
{
 usbvision->scratch_read_ptr += len;
 usbvision->scratch_read_ptr %= scratch_buf_size;
 PDEBUG(DBG_SCRATCH, "read_ptr is now %d\n", usbvision->scratch_read_ptr);
}
