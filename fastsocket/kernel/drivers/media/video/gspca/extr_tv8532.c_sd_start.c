
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sd {scalar_t__ packet; } ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {scalar_t__ empty_packet; scalar_t__ curr_mode; TYPE_2__ cam; } ;
struct TYPE_3__ {scalar_t__ priv; } ;


 int R0C_AD_WIDTHL ;
 int R0D_AD_WIDTHH ;
 int R28_QUANT ;
 int R29_LINE ;
 int R2C_POLARITY ;
 int R2D_POINT ;
 int R2E_POINTH ;
 int R2F_POINTB ;
 int R30_POINTBH ;
 int R31_UPD ;
 int msleep (int) ;
 int reg_w1 (struct gspca_dev*,int ,int) ;
 int setexposure (struct gspca_dev*) ;
 int setgain (struct gspca_dev*) ;
 int tv_8532_setReg (struct gspca_dev*) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 reg_w1(gspca_dev, R0C_AD_WIDTHL, 0xe8);
 reg_w1(gspca_dev, R0D_AD_WIDTHH, 0x03);


 reg_w1(gspca_dev, R28_QUANT, 0x90);

 if (gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv) {

  reg_w1(gspca_dev, R29_LINE, 0x41);

 } else {

  reg_w1(gspca_dev, R29_LINE, 0x81);

 }

 reg_w1(gspca_dev, R2C_POLARITY, 0x10);
 reg_w1(gspca_dev, R2D_POINT, 0x14);
 reg_w1(gspca_dev, R2E_POINTH, 0x01);
 reg_w1(gspca_dev, R2F_POINTB, 0x12);
 reg_w1(gspca_dev, R30_POINTBH, 0x01);

 tv_8532_setReg(gspca_dev);

 setexposure(gspca_dev);
 setgain(gspca_dev);


 reg_w1(gspca_dev, R31_UPD, 0x01);
 msleep(200);
 reg_w1(gspca_dev, R31_UPD, 0x00);

 gspca_dev->empty_packet = 0;
 sd->packet = 0;

 return 0;
}
