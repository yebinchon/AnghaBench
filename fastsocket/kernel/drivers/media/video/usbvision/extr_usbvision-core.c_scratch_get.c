
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int scratch_read_ptr; scalar_t__ scratch; } ;


 int DBG_SCRATCH ;
 int PDEBUG (int ,char*,int,int) ;
 int memcpy (unsigned char*,scalar_t__,int) ;
 int scratch_buf_size ;

__attribute__((used)) static int scratch_get(struct usb_usbvision *usbvision, unsigned char *data,
         int len)
{
 int len_part;

 if (usbvision->scratch_read_ptr + len < scratch_buf_size) {
  memcpy(data, usbvision->scratch + usbvision->scratch_read_ptr, len);
  usbvision->scratch_read_ptr += len;
 } else {
  len_part = scratch_buf_size - usbvision->scratch_read_ptr;
  memcpy(data, usbvision->scratch + usbvision->scratch_read_ptr, len_part);
  if (len == len_part) {
   usbvision->scratch_read_ptr = 0;
  } else {
   memcpy(data + len_part, usbvision->scratch, len - len_part);
   usbvision->scratch_read_ptr = len - len_part;
  }
 }

 PDEBUG(DBG_SCRATCH, "len=%d, new read_ptr=%d\n", len, usbvision->scratch_read_ptr);

 return len;
}
