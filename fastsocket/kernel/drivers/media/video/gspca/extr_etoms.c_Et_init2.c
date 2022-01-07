
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {scalar_t__ curr_mode; TYPE_2__ cam; } ;
typedef int __u8 ;
struct TYPE_3__ {scalar_t__ priv; } ;


 int D_STREAM ;
 int ET_COMP ;
 int ET_COMP_VAL0 ;
 int ET_COMP_VAL1 ;
 int ET_CTRL ;
 int ET_ClCK ;
 int ET_GPIO_DIR_CTRL ;
 int ET_GPIO_IN ;
 int ET_GPIO_OUT ;
 int ET_G_BLUE ;
 int ET_G_GB_H ;
 int ET_G_GREEN1 ;
 int ET_G_GREEN2 ;
 int ET_G_GR_H ;
 int ET_G_RED ;
 int ET_HEIGTH_LOW ;
 int ET_MAXQt ;
 int ET_MINQt ;
 int ET_O_BLUE ;
 int ET_O_GREEN1 ;
 int ET_O_GREEN2 ;
 int ET_O_RED ;
 int ET_PXL_CLK ;
 int ET_REG1d ;
 int ET_REG1e ;
 int ET_REG1f ;
 int ET_REG20 ;
 int ET_REG21 ;
 int ET_REG22 ;
 int ET_REG23 ;
 int ET_REG24 ;
 int ET_REG25 ;
 int ET_REG6e ;
 int ET_REG6f ;
 int ET_REG70 ;
 int ET_REG71 ;
 int ET_REG72 ;
 int ET_REG73 ;
 int ET_REG74 ;
 int ET_REG75 ;
 int ET_STARTX ;
 int ET_STARTY ;
 int ET_SYNCHRO ;
 int ET_WIDTH_LOW ;
 int ET_W_H_HEIGTH ;
 int PDEBUG (int ,char*) ;
 int reg_r (struct gspca_dev*,int ,int) ;
 int reg_w (struct gspca_dev*,int,int const*,int) ;
 int reg_w_val (struct gspca_dev*,int,int) ;

__attribute__((used)) static void Et_init2(struct gspca_dev *gspca_dev)
{
 __u8 value;
 static const __u8 FormLine[] = { 0x84, 0x03, 0x14, 0xf4, 0x01, 0x05 };

 PDEBUG(D_STREAM, "Open Init2 ET");
 reg_w_val(gspca_dev, ET_GPIO_DIR_CTRL, 0x2f);
 reg_w_val(gspca_dev, ET_GPIO_OUT, 0x10);
 reg_r(gspca_dev, ET_GPIO_IN, 1);
 reg_w_val(gspca_dev, ET_ClCK, 0x14);
 reg_w_val(gspca_dev, ET_CTRL, 0x1b);


 if (gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv)
  value = ET_COMP_VAL1;
 else
  value = ET_COMP_VAL0;
 reg_w_val(gspca_dev, ET_COMP, value);
 reg_w_val(gspca_dev, ET_MAXQt, 0x1f);
 reg_w_val(gspca_dev, ET_MINQt, 0x04);

 reg_w_val(gspca_dev, ET_REG1d, 0xff);
 reg_w_val(gspca_dev, ET_REG1e, 0xff);
 reg_w_val(gspca_dev, ET_REG1f, 0xff);
 reg_w_val(gspca_dev, ET_REG20, 0x35);
 reg_w_val(gspca_dev, ET_REG21, 0x01);
 reg_w_val(gspca_dev, ET_REG22, 0x00);
 reg_w_val(gspca_dev, ET_REG23, 0xff);
 reg_w_val(gspca_dev, ET_REG24, 0xff);
 reg_w_val(gspca_dev, ET_REG25, 0x0f);

 reg_w_val(gspca_dev, 0x30, 0x11);
 reg_w_val(gspca_dev, 0x31, 0x40);
 reg_w_val(gspca_dev, 0x32, 0x00);
 reg_w_val(gspca_dev, ET_O_RED, 0x00);
 reg_w_val(gspca_dev, ET_O_GREEN1, 0x00);
 reg_w_val(gspca_dev, ET_O_BLUE, 0x00);
 reg_w_val(gspca_dev, ET_O_GREEN2, 0x00);

 reg_w_val(gspca_dev, ET_G_RED, 0x80);
 reg_w_val(gspca_dev, ET_G_GREEN1, 0x80);
 reg_w_val(gspca_dev, ET_G_BLUE, 0x80);
 reg_w_val(gspca_dev, ET_G_GREEN2, 0x80);
 reg_w_val(gspca_dev, ET_G_GR_H, 0x00);
 reg_w_val(gspca_dev, ET_G_GB_H, 0x00);

 reg_w_val(gspca_dev, 0x61, 0x80);
 reg_w_val(gspca_dev, 0x62, 0x02);
 reg_w_val(gspca_dev, 0x63, 0x03);
 reg_w_val(gspca_dev, 0x64, 0x14);
 reg_w_val(gspca_dev, 0x65, 0x0e);
 reg_w_val(gspca_dev, 0x66, 0x02);
 reg_w_val(gspca_dev, 0x67, 0x02);


 reg_w_val(gspca_dev, ET_SYNCHRO, 0x8f);
 reg_w_val(gspca_dev, ET_STARTX, 0x69);
 reg_w_val(gspca_dev, ET_STARTY, 0x0d);
 reg_w_val(gspca_dev, ET_WIDTH_LOW, 0x80);
 reg_w_val(gspca_dev, ET_HEIGTH_LOW, 0xe0);
 reg_w_val(gspca_dev, ET_W_H_HEIGTH, 0x60);
 reg_w_val(gspca_dev, ET_REG6e, 0x86);
 reg_w_val(gspca_dev, ET_REG6f, 0x01);
 reg_w_val(gspca_dev, ET_REG70, 0x26);
 reg_w_val(gspca_dev, ET_REG71, 0x7a);
 reg_w_val(gspca_dev, ET_REG72, 0x01);

 reg_w_val(gspca_dev, ET_REG73, 0x00);
 reg_w_val(gspca_dev, ET_REG74, 0x18);
 reg_w_val(gspca_dev, ET_REG75, 0x0f);

 reg_w_val(gspca_dev, 0x8a, 0x20);
 reg_w_val(gspca_dev, 0x8d, 0x0f);
 reg_w_val(gspca_dev, 0x8e, 0x08);

 reg_w_val(gspca_dev, 0x03, 0x08);
 reg_w_val(gspca_dev, ET_PXL_CLK, 0x03);
 reg_w_val(gspca_dev, 0x81, 0xff);
 reg_w_val(gspca_dev, 0x80, 0x00);
 reg_w_val(gspca_dev, 0x81, 0xff);
 reg_w_val(gspca_dev, 0x80, 0x20);
 reg_w_val(gspca_dev, 0x03, 0x01);
 reg_w_val(gspca_dev, 0x03, 0x00);
 reg_w_val(gspca_dev, 0x03, 0x08);





 if (gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv)
  value = 0x04;
 else
  value = 0x1e;





 reg_w_val(gspca_dev, ET_PXL_CLK, value);

 reg_w(gspca_dev, 0x62, FormLine, 6);


 reg_w_val(gspca_dev, 0x81, 0x47);
 reg_w_val(gspca_dev, 0x80, 0x40);




 reg_w_val(gspca_dev, 0x81, 0x30);
 reg_w_val(gspca_dev, 0x80, 0x20);
}
