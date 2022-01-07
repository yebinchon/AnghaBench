
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sd {int bridge; int subtype; } ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; TYPE_2__ cam; } ;
struct TYPE_3__ {int priv; } ;


 int AiptekMiniPenCam13 ;



 int reg_r (struct gspca_dev*,int,int,int) ;
 int reg_w_1 (struct gspca_dev*,int,int ,int,int) ;
 int reg_w_riv (struct gspca_dev*,int,int,int) ;
 int spca504A_acknowledged_command (struct gspca_dev*,int,int,int ,int,int) ;
 int spca504B_PollingDataReady (struct gspca_dev*) ;
 int spca504B_WaitCmdStatus (struct gspca_dev*) ;
 int spca504_acknowledged_command (struct gspca_dev*,int,int,int ) ;
 int spca50x_GetFirmware (struct gspca_dev*) ;

__attribute__((used)) static void spca504B_SetSizeType(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 Size;

 Size = gspca_dev->cam.cam_mode[gspca_dev->curr_mode].priv;
 switch (sd->bridge) {
 case 128:
  reg_w_riv(gspca_dev, 0x31, 0, 0);
  spca504B_WaitCmdStatus(gspca_dev);
  spca504B_PollingDataReady(gspca_dev);
  spca50x_GetFirmware(gspca_dev);
  reg_w_1(gspca_dev, 0x24, 0, 8, 2);
  reg_r(gspca_dev, 0x24, 8, 1);

  reg_w_1(gspca_dev, 0x25, 0, 4, Size);
  reg_r(gspca_dev, 0x25, 4, 1);
  spca504B_PollingDataReady(gspca_dev);


  reg_w_riv(gspca_dev, 0x31, 0x0004, 0x00);
  spca504B_WaitCmdStatus(gspca_dev);
  spca504B_PollingDataReady(gspca_dev);
  break;
 default:


  reg_w_1(gspca_dev, 0x25, 0, 4, Size);
  reg_r(gspca_dev, 0x25, 4, 1);
  reg_w_1(gspca_dev, 0x27, 0, 0, 6);
  reg_r(gspca_dev, 0x27, 0, 1);
  spca504B_PollingDataReady(gspca_dev);
  break;
 case 130:
  Size += 3;
  if (sd->subtype == AiptekMiniPenCam13) {

   spca504A_acknowledged_command(gspca_dev,
      0x08, Size, 0,
      0x80 | (Size & 0x0f), 1);
   spca504A_acknowledged_command(gspca_dev,
       1, 3, 0, 0x9f, 0);
  } else {
   spca504_acknowledged_command(gspca_dev, 0x08, Size, 0);
  }
  break;
 case 129:

  reg_w_riv(gspca_dev, 0xa0, (0x0500 | (Size & 0x0f)), 0x00);
  reg_w_riv(gspca_dev, 0x20, 0x01, 0x0500 | (Size & 0x0f));
  break;
 }
}
