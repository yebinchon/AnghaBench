
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ sif; } ;


 int reg_w (struct sd*,int,int) ;

__attribute__((used)) static void w9968cf_init(struct sd *sd)
{
 unsigned long hw_bufsize = sd->sif ? (352 * 288 * 2) : (640 * 480 * 2),
        y0 = 0x0000,
        u0 = y0 + hw_bufsize / 2,
        v0 = u0 + hw_bufsize / 4,
        y1 = v0 + hw_bufsize / 4,
        u1 = y1 + hw_bufsize / 2,
        v1 = u1 + hw_bufsize / 4;

 reg_w(sd, 0x00, 0xff00);
 reg_w(sd, 0x00, 0xbf10);

 reg_w(sd, 0x03, 0x405d);
 reg_w(sd, 0x04, 0x0030);

 reg_w(sd, 0x20, y0 & 0xffff);
 reg_w(sd, 0x21, y0 >> 16);
 reg_w(sd, 0x24, u0 & 0xffff);
 reg_w(sd, 0x25, u0 >> 16);
 reg_w(sd, 0x28, v0 & 0xffff);
 reg_w(sd, 0x29, v0 >> 16);

 reg_w(sd, 0x22, y1 & 0xffff);
 reg_w(sd, 0x23, y1 >> 16);
 reg_w(sd, 0x26, u1 & 0xffff);
 reg_w(sd, 0x27, u1 >> 16);
 reg_w(sd, 0x2a, v1 & 0xffff);
 reg_w(sd, 0x2b, v1 >> 16);

 reg_w(sd, 0x32, y1 & 0xffff);
 reg_w(sd, 0x33, y1 >> 16);

 reg_w(sd, 0x34, y1 & 0xffff);
 reg_w(sd, 0x35, y1 >> 16);

 reg_w(sd, 0x36, 0x0000);
 reg_w(sd, 0x37, 0x0804);
 reg_w(sd, 0x38, 0x0000);
 reg_w(sd, 0x3f, 0x0000);
}
