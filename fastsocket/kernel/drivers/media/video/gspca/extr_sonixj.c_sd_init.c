
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sd {int bridge; int sensor; int i2c_addr; int flags; TYPE_1__* ctrls; } ;
struct gspca_dev {int* usb_buf; scalar_t__ usb_err; int ctrl_dis; } ;
struct TYPE_2__ {int def; } ;






 int D_PROBE ;
 int ENODEV ;
 int F_ILLUM ;
 int ILLUM ;
 int PDEBUG (int ,char*,int) ;

 int SENSOR_OM6802 ;



 size_t SHARPNESS ;
 int* ctrl_dis ;
 int mi0360_probe (struct gspca_dev*) ;
 int ov7630_probe (struct gspca_dev*) ;
 int ov7648_probe (struct gspca_dev*) ;
 int po2030n_probe (struct gspca_dev*) ;
 int reg_r (struct gspca_dev*,int,int) ;
 int reg_w (struct gspca_dev*,int,int*,int) ;
 int reg_w1 (struct gspca_dev*,int,int) ;
 int** sn_tb ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 const u8 *sn9c1xx;
 u8 regGpio[] = { 0x29, 0x74 };
 u8 regF1;


 reg_w1(gspca_dev, 0xf1, 0x01);
 reg_r(gspca_dev, 0x00, 1);
 reg_w1(gspca_dev, 0xf1, 0x00);
 reg_r(gspca_dev, 0x00, 1);
 regF1 = gspca_dev->usb_buf[0];
 if (gspca_dev->usb_err < 0)
  return gspca_dev->usb_err;
 PDEBUG(D_PROBE, "Sonix chip id: %02x", regF1);
 switch (sd->bridge) {
 case 135:
 case 134:
  if (regF1 != 0x11)
   return -ENODEV;
  break;
 default:


  if (regF1 != 0x12)
   return -ENODEV;
 }

 switch (sd->sensor) {
 case 131:
  mi0360_probe(gspca_dev);
  break;
 case 130:
  ov7630_probe(gspca_dev);
  break;
 case 129:
  ov7648_probe(gspca_dev);
  break;
 case 128:
  po2030n_probe(gspca_dev);
  break;
 }

 switch (sd->bridge) {
 case 135:
  reg_w1(gspca_dev, 0x02, regGpio[1]);
  break;
 case 134:
  reg_w(gspca_dev, 0x01, regGpio, 2);
  break;
 case 133:
  reg_w1(gspca_dev, 0x02, 0x62);
  break;
 case 132:
  regGpio[1] = 0x70;
  reg_w(gspca_dev, 0x01, regGpio, 2);
  break;
 }

 if (sd->sensor == SENSOR_OM6802)
  sd->ctrls[SHARPNESS].def = 0x10;



 reg_w1(gspca_dev, 0xf1, 0x00);


 sn9c1xx = sn_tb[sd->sensor];
 sd->i2c_addr = sn9c1xx[9];

 gspca_dev->ctrl_dis = ctrl_dis[sd->sensor];
 if (!(sd->flags & F_ILLUM))
  gspca_dev->ctrl_dis |= (1 << ILLUM);

 return gspca_dev->usb_err;
}
