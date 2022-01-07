
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_stv {int VideoMode; } ;


 int GFP_KERNEL ;
 int PDEBUG (int,char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int stv_set_config (struct usb_stv*,int,int ,int) ;
 int stv_sndctrl (int,struct usb_stv*,int,int,unsigned char*,int) ;
 int stv_stop_video (struct usb_stv*) ;

__attribute__((used)) static int stv_set_video_mode (struct usb_stv *dev)
{
 int i, stop_video = 1;
 unsigned char *buf;

 buf = kmalloc (40, GFP_KERNEL);
 if (buf == ((void*)0)) {
  PDEBUG (0, "STV(e): Out of (small buf) memory");
  return -1;
 }

 if ((i = stv_set_config (dev, 1, 0, 0)) < 0) {
  kfree(buf);
  return i;
 }

 i = stv_sndctrl (2, dev, 0x06, 0x0100, buf, 0x12);
 if (!(i > 0) && (buf[8] == 0x53) && (buf[9] == 0x05)) {
  PDEBUG (1, "STV(e): Could not get descriptor 0100.");
  goto error;
 }


 if ((i = stv_set_config (dev, 1, 0, 1)) < 0)
  goto error;

 if ((i = stv_sndctrl (0, dev, 0x85, 0, buf, 0x10)) != 0x10)
  goto error;
 PDEBUG (1, "STV(i): Setting video mode.");

 if ((i = stv_sndctrl (1, dev, 0x09, dev->VideoMode, buf, 0x0)) < 0) {
  stop_video = 0;
  goto error;
 }
 goto exit;

error:
 kfree(buf);
 if (stop_video == 1)
  stv_stop_video (dev);
 return -1;

exit:
 kfree(buf);
 return 0;
}
