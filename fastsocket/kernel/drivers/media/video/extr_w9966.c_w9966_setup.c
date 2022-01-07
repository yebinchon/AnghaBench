
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w9966_dev {int width; int height; unsigned char i2c_state; unsigned char brightness; unsigned char contrast; unsigned char color; unsigned char hue; } ;


 int DPRINTF (char*,...) ;
 unsigned char W9966_SRAMID ;
 int W9966_SRAMSIZE ;
 int W9966_WND_MAX_H ;
 int W9966_WND_MAX_W ;
 int W9966_WND_MAX_X ;
 int W9966_WND_MAX_Y ;
 int W9966_WND_MIN_X ;
 int W9966_WND_MIN_Y ;
 scalar_t__ w9966_calcscale (int,int ,int ,int*,int*,unsigned char*) ;
 int w9966_wReg (struct w9966_dev*,unsigned int,unsigned char) ;
 int w9966_wReg_i2c (struct w9966_dev*,unsigned int,unsigned char) ;

__attribute__((used)) static int w9966_setup(struct w9966_dev* cam, int x1, int y1, int x2, int y2, int w, int h)
{
 unsigned int i;
 unsigned int enh_s, enh_e;
 unsigned char scale_x, scale_y;
 unsigned char regs[0x1c];
 unsigned char saa7111_regs[] = {
  0x21, 0x00, 0xd8, 0x23, 0x00, 0x80, 0x80, 0x00,
  0x88, 0x10, 0x80, 0x40, 0x40, 0x00, 0x01, 0x00,
  0x48, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x71, 0xe7, 0x00, 0x00, 0xc0
 };


 if (w*h*2 > W9966_SRAMSIZE)
 {
  DPRINTF("capture window exceeds SRAM size!.\n");
  w = 200; h = 160;
 }

 w &= ~0x1;
 if (w < 2) w = 2;
 if (h < 1) h = 1;
 if (w > W9966_WND_MAX_W) w = W9966_WND_MAX_W;
 if (h > W9966_WND_MAX_H) h = W9966_WND_MAX_H;

 cam->width = w;
 cam->height = h;

 enh_s = 0;
 enh_e = w*h*2;


 if (
  w9966_calcscale(w, W9966_WND_MIN_X, W9966_WND_MAX_X, &x1, &x2, &scale_x) != 0 ||
  w9966_calcscale(h, W9966_WND_MIN_Y, W9966_WND_MAX_Y, &y1, &y2, &scale_y) != 0
 ) return -1;

 DPRINTF(
  "%dx%d, x: %d<->%d, y: %d<->%d, sx: %d/64, sy: %d/64.\n",
  w, h, x1, x2, y1, y2, scale_x&~0x80, scale_y&~0x80
 );


 regs[0x00] = 0x00;
 regs[0x01] = 0x18;
 regs[0x02] = scale_y;
 regs[0x03] = scale_x;


 regs[0x04] = (x1 & 0x0ff);
 regs[0x05] = (x1 & 0x300)>>8;
 regs[0x06] = (y1 & 0x0ff);
 regs[0x07] = (y1 & 0x300)>>8;
 regs[0x08] = (x2 & 0x0ff);
 regs[0x09] = (x2 & 0x300)>>8;
 regs[0x0a] = (y2 & 0x0ff);

 regs[0x0c] = W9966_SRAMID;


 regs[0x0d] = (enh_s& 0x000ff);
 regs[0x0e] = (enh_s& 0x0ff00)>>8;
 regs[0x0f] = (enh_s& 0x70000)>>16;
 regs[0x10] = (enh_e& 0x000ff);
 regs[0x11] = (enh_e& 0x0ff00)>>8;
 regs[0x12] = (enh_e& 0x70000)>>16;


 regs[0x13] = 0x40;
 regs[0x17] = 0x00;
 regs[0x18] = cam->i2c_state = 0x00;
 regs[0x19] = 0xff;
 regs[0x1a] = 0xff;
 regs[0x1b] = 0x10;


 saa7111_regs[0x0a] = cam->brightness;
 saa7111_regs[0x0b] = cam->contrast;
 saa7111_regs[0x0c] = cam->color;
 saa7111_regs[0x0d] = cam->hue;


 if (w9966_wReg(cam, 0x00, 0x03) == -1)
  return -1;


 for (i = 0; i < 0x1c; i++)
  if (w9966_wReg(cam, i, regs[i]) == -1)
   return -1;


 for (i = 0; i < 0x20; i++)
  if (w9966_wReg_i2c(cam, i, saa7111_regs[i]) == -1)
   return -1;

 return 0;
}
