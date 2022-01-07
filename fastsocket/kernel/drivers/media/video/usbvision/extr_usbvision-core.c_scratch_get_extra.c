
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {scalar_t__ scratch; } ;


 int DBG_SCRATCH ;
 int PDEBUG (int ,char*,int,int) ;
 int memcpy (unsigned char*,scalar_t__,int) ;
 int scratch_buf_size ;

__attribute__((used)) static int scratch_get_extra(struct usb_usbvision *usbvision,
        unsigned char *data, int *ptr, int len)
{
 int len_part;

 if (*ptr + len < scratch_buf_size) {
  memcpy(data, usbvision->scratch + *ptr, len);
  *ptr += len;
 } else {
  len_part = scratch_buf_size - *ptr;
  memcpy(data, usbvision->scratch + *ptr, len_part);
  if (len == len_part) {
   *ptr = 0;
  } else {
   memcpy(data + len_part, usbvision->scratch, len - len_part);
   *ptr = len - len_part;
  }
 }

 PDEBUG(DBG_SCRATCH, "len=%d, new ptr=%d\n", len, *ptr);

 return len;
}
