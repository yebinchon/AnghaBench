
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int dummy; } ;


 int EFAULT ;
 int usbvision_i2c_read_max4 (struct usb_usbvision*,unsigned char,char*,int) ;

__attribute__((used)) static int usbvision_i2c_read(struct usb_usbvision *usbvision, unsigned char addr, char *buf,
      short len)
{
 char temp[4];
 int retval, i;
 int rdcount = 0;
 int count;

 while (len > 0) {
  count = (len > 3) ? 4 : len;
  retval = usbvision_i2c_read_max4(usbvision, addr, temp, count);
  if (retval > 0) {
   for (i = 0; i < len; i++)
    buf[rdcount + i] = temp[i];
   len -= count;
   rdcount += count;
  } else
   return (retval < 0) ? retval : -EFAULT;
 }
 return rdcount;
}
