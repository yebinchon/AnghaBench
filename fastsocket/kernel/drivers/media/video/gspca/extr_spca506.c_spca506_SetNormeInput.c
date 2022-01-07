
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int norme; int channel; } ;
struct gspca_dev {int dev; } ;
typedef int __u8 ;
typedef int __u16 ;


 int D_STREAM ;
 int PDEBUG (int ,char*,...) ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_SECAM ;
 int reg_w (int ,int,int,int) ;
 int spca506_Initi2c (struct gspca_dev*) ;
 int spca506_WriteI2c (struct gspca_dev*,int,int) ;

__attribute__((used)) static void spca506_SetNormeInput(struct gspca_dev *gspca_dev,
     __u16 norme,
     __u16 channel)
{
 struct sd *sd = (struct sd *) gspca_dev;

 __u8 setbit0 = 0x00;
 __u8 setbit1 = 0x00;
 __u8 videomask = 0x00;

 PDEBUG(D_STREAM, "** Open Set Norme **");
 spca506_Initi2c(gspca_dev);



 if (norme & V4L2_STD_NTSC)
  setbit0 = 0x01;
 if (channel == 4 || channel == 5 || channel > 9)
  channel = 0;
 if (channel < 4)
  setbit1 = 0x02;
 videomask = (0x48 | setbit0 | setbit1);
 reg_w(gspca_dev->dev, 0x08, videomask, 0x0000);
 spca506_WriteI2c(gspca_dev, (0xc0 | (channel & 0x0F)), 0x02);

 if (norme & V4L2_STD_NTSC)
  spca506_WriteI2c(gspca_dev, 0x33, 0x0e);

 else if (norme & V4L2_STD_SECAM)
  spca506_WriteI2c(gspca_dev, 0x53, 0x0e);

 else
  spca506_WriteI2c(gspca_dev, 0x03, 0x0e);


 sd->norme = norme;
 sd->channel = channel;
 PDEBUG(D_STREAM, "Set Video Byte to 0x%2x", videomask);
 PDEBUG(D_STREAM, "Set Norme: %08x Channel %d", norme, channel);
}
