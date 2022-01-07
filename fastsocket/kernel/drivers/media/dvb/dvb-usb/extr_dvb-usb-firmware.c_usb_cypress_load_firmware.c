
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usb_device {int dummy; } ;
struct hexline {int len; int* data; int addr; int chk; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int cpu_cs_register; } ;


 int EINVAL ;
 int EIO ;
 TYPE_1__* cypress ;
 int deb_fw (char*,int ,int,int ) ;
 int dvb_usb_get_hexline (struct firmware const*,struct hexline*,int*) ;
 int err (char*,...) ;
 int usb_cypress_writemem (struct usb_device*,int ,int*,int) ;

int usb_cypress_load_firmware(struct usb_device *udev, const struct firmware *fw, int type)
{
 struct hexline hx;
 u8 reset;
 int ret,pos=0;


 reset = 1;
 if ((ret = usb_cypress_writemem(udev,cypress[type].cpu_cs_register,&reset,1)) != 1)
  err("could not stop the USB controller CPU.");

 while ((ret = dvb_usb_get_hexline(fw,&hx,&pos)) > 0) {
  deb_fw("writing to address 0x%04x (buffer: 0x%02x %02x)\n",hx.addr,hx.len,hx.chk);
  ret = usb_cypress_writemem(udev,hx.addr,hx.data,hx.len);

  if (ret != hx.len) {
   err("error while transferring firmware "
    "(transferred size: %d, block size: %d)",
    ret,hx.len);
   ret = -EINVAL;
   break;
  }
 }
 if (ret < 0) {
  err("firmware download failed at %d with %d",pos,ret);
  return ret;
 }

 if (ret == 0) {

  reset = 0;
  if (ret || usb_cypress_writemem(udev,cypress[type].cpu_cs_register,&reset,1) != 1) {
   err("could not restart the USB controller CPU.");
   ret = -EINVAL;
  }
 } else
  ret = -EIO;

 return ret;
}
