
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_stv {unsigned char origMode; } ;


 int GFP_KERNEL ;
 int PDEBUG (int,char*,...) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int memset (unsigned char*,int ,int) ;
 int stv_set_config (struct usb_stv*,int,int ,int ) ;
 int stv_sndctrl (int,struct usb_stv*,int,int,unsigned char*,int) ;

__attribute__((used)) static int stv_stop_video (struct usb_stv *dev)
{
 int i;
 unsigned char *buf;

 buf = kmalloc (40, GFP_KERNEL);
 if (buf == ((void*)0)) {
  PDEBUG (0, "STV(e): Out of (small buf) memory");
  return -1;
 }


 if ((i = stv_sndctrl (1, dev, 0x04, 0x0000, buf, 0x0)) < 0) {
  i = stv_sndctrl (0, dev, 0x80, 0, buf, 0x02);
  PDEBUG (1, "STV(i): last error: %i,  command = 0x%x", buf[0], buf[1]);
 } else {
  PDEBUG (1, "STV(i): Camera reset to idle mode.");
 }

 if ((i = stv_set_config (dev, 1, 0, 0)) < 0)
  PDEBUG (1, "STV(e): Reset config during exit failed");


 buf[0] = 0xf0;
 if ((i = stv_sndctrl (0, dev, 0x87, 0, buf, 0x08)) != 0x08)
  PDEBUG (0, "STV(e): Stop_video: problem setting original mode");
 if (dev->origMode != buf[0]) {
  memset (buf, 0, 8);
  buf[0] = (unsigned char) dev->origMode;
  if ((i = stv_sndctrl (3, dev, 0x07, 0x0100, buf, 0x08)) != 0x08) {
   PDEBUG (0, "STV(e): Stop_video: Set_Camera_Mode failed");
   i = -1;
  }
  buf[0] = 0xf0;
  i = stv_sndctrl (0, dev, 0x87, 0, buf, 0x08);
  if ((i != 0x08) || (buf[0] != dev->origMode)) {
   PDEBUG (0, "STV(e): camera NOT set to original resolution.");
   i = -1;
  } else
   PDEBUG (0, "STV(i): Camera set to original resolution");
 }

 kfree(buf);
 return i;
}
