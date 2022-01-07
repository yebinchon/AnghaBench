
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int bridge; int autogain; int subtype; int quality; int jpeg_hdr; } ;
struct gspca_dev {int usb_err; int width; int height; } ;


 int ARRAY_SIZE (int ) ;
 int AiptekMiniPenCam13 ;

 int BRIDGE_SPCA504B ;

 int LogitechClickSmart420 ;



 int init_ctl_reg (struct gspca_dev*) ;
 int jpeg_define (int ,int ,int ,int) ;
 int jpeg_set_qual (int ,int ) ;
 int reg_r (struct gspca_dev*,int,int,int ) ;
 int reg_w_riv (struct gspca_dev*,int,int,int) ;
 int spca504A_acknowledged_command (struct gspca_dev*,int,int,int,int,int) ;
 int spca504A_clicksmart420_init_data ;
 int spca504B_PollingDataReady (struct gspca_dev*) ;
 int spca504B_SetSizeType (struct gspca_dev*) ;
 int spca504B_WaitCmdStatus (struct gspca_dev*) ;
 int spca504B_setQtable (struct gspca_dev*) ;
 int spca504_acknowledged_command (struct gspca_dev*,int,int,int) ;
 int spca504_pccam600_init_data ;
 int spca504_read_info (struct gspca_dev*) ;
 int write_vector (struct gspca_dev*,int ,int ) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int enable;


 jpeg_define(sd->jpeg_hdr, gspca_dev->height, gspca_dev->width,
   0x22);
 jpeg_set_qual(sd->jpeg_hdr, sd->quality);

 if (sd->bridge == BRIDGE_SPCA504B)
  spca504B_setQtable(gspca_dev);
 spca504B_SetSizeType(gspca_dev);
 switch (sd->bridge) {
 default:



  switch (sd->subtype) {
  case 128:
  case 130:
  case 129:
   reg_w_riv(gspca_dev, 0xf0, 0, 0);
   spca504B_WaitCmdStatus(gspca_dev);
   reg_r(gspca_dev, 0xf0, 4, 0);
   spca504B_WaitCmdStatus(gspca_dev);
   break;
  default:
   reg_w_riv(gspca_dev, 0x31, 0x0004, 0x00);
   spca504B_WaitCmdStatus(gspca_dev);
   spca504B_PollingDataReady(gspca_dev);
   break;
  }
  break;
 case 132:
  if (sd->subtype == AiptekMiniPenCam13) {
   spca504_read_info(gspca_dev);


   spca504A_acknowledged_command(gspca_dev, 0x24,
       8, 3, 0x9e, 1);

   spca504A_acknowledged_command(gspca_dev, 0x24,
       8, 3, 0x9e, 0);
   spca504A_acknowledged_command(gspca_dev, 0x24,
       0, 0, 0x9d, 1);
  } else {
   spca504_acknowledged_command(gspca_dev, 0x24, 8, 3);
   spca504_read_info(gspca_dev);
   spca504_acknowledged_command(gspca_dev, 0x24, 8, 3);
   spca504_acknowledged_command(gspca_dev, 0x24, 0, 0);
  }
  spca504B_SetSizeType(gspca_dev);
  reg_w_riv(gspca_dev, 0x00, 0x270c, 0x05);

  reg_w_riv(gspca_dev, 0x00, 0x2310, 0x05);
  break;
 case 131:
  if (sd->subtype == LogitechClickSmart420) {
   write_vector(gspca_dev,
    spca504A_clicksmart420_init_data,
    ARRAY_SIZE(spca504A_clicksmart420_init_data));
  } else {
   write_vector(gspca_dev, spca504_pccam600_init_data,
    ARRAY_SIZE(spca504_pccam600_init_data));
  }
  enable = (sd->autogain ? 0x04 : 0x01);
  reg_w_riv(gspca_dev, 0x0c, 0x0000, enable);

  reg_w_riv(gspca_dev, 0xb0, 0x0000, enable);



  reg_w_riv(gspca_dev, 0x30, 0x0001, 800);
  reg_w_riv(gspca_dev, 0x30, 0x0002, 1600);
  spca504B_SetSizeType(gspca_dev);
  break;
 }
 init_ctl_reg(gspca_dev);
 return gspca_dev->usb_err;
}
