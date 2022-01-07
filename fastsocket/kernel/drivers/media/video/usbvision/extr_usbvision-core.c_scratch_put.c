
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int scratch_write_ptr; scalar_t__ scratch; } ;


 int DBG_SCRATCH ;
 int PDEBUG (int ,char*,int,int) ;
 int memcpy (scalar_t__,unsigned char*,int) ;
 int scratch_buf_size ;

__attribute__((used)) static int scratch_put(struct usb_usbvision *usbvision, unsigned char *data,
         int len)
{
 int len_part;

 if (usbvision->scratch_write_ptr + len < scratch_buf_size) {
  memcpy(usbvision->scratch + usbvision->scratch_write_ptr, data, len);
  usbvision->scratch_write_ptr += len;
 } else {
  len_part = scratch_buf_size - usbvision->scratch_write_ptr;
  memcpy(usbvision->scratch + usbvision->scratch_write_ptr, data, len_part);
  if (len == len_part) {
   usbvision->scratch_write_ptr = 0;
  } else {
   memcpy(usbvision->scratch, data + len_part, len - len_part);
   usbvision->scratch_write_ptr = len - len_part;
  }
 }

 PDEBUG(DBG_SCRATCH, "len=%d, new write_ptr=%d\n", len, usbvision->scratch_write_ptr);

 return len;
}
