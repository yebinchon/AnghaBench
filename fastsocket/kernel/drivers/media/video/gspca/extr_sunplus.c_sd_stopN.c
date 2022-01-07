
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int bridge; int subtype; } ;
struct gspca_dev {int dummy; } ;


 int AiptekMiniPenCam13 ;


 int reg_w_riv (struct gspca_dev*,int,int,int) ;
 int spca504A_acknowledged_command (struct gspca_dev*,int,int,int,int,int) ;
 int spca504B_PollingDataReady (struct gspca_dev*) ;
 int spca504B_WaitCmdStatus (struct gspca_dev*) ;
 int spca504_acknowledged_command (struct gspca_dev*,int,int ,int ) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->bridge) {
 default:



  reg_w_riv(gspca_dev, 0x31, 0, 0);
  spca504B_WaitCmdStatus(gspca_dev);
  spca504B_PollingDataReady(gspca_dev);
  break;
 case 129:
 case 128:
  reg_w_riv(gspca_dev, 0x00, 0x2000, 0x0000);

  if (sd->subtype == AiptekMiniPenCam13) {



   spca504A_acknowledged_command(gspca_dev, 0x24,
       0x00, 0x00, 0x9d, 1);
   spca504A_acknowledged_command(gspca_dev, 0x01,
       0x0f, 0x00, 0xff, 1);
  } else {
   spca504_acknowledged_command(gspca_dev, 0x24, 0, 0);
   reg_w_riv(gspca_dev, 0x01, 0x000f, 0x0000);
  }
  break;
 }
}
