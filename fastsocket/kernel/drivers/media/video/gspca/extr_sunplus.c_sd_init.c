
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int bridge; int subtype; } ;
struct gspca_dev {int usb_err; } ;


 int ARRAY_SIZE (int ) ;
 int AiptekMiniPenCam13 ;




 int D_STREAM ;
 int LogitechClickSmart420 ;
 int PDEBUG (int ,char*) ;
 int qtable_creative_pccam ;
 int qtable_spca504_default ;
 int reg_r (struct gspca_dev*,int,int,int) ;
 int reg_w_1 (struct gspca_dev*,int,int ,int ,int ) ;
 int reg_w_riv (struct gspca_dev*,int,int,int) ;
 int setup_qtable (struct gspca_dev*,int ) ;
 int spca504A_acknowledged_command (struct gspca_dev*,int,int,int,int,int) ;
 int spca504A_clicksmart420_open_data ;
 int spca504B_PollingDataReady (struct gspca_dev*) ;
 int spca504B_WaitCmdStatus (struct gspca_dev*) ;
 int spca504_pccam600_open_data ;
 int spca504_read_info (struct gspca_dev*) ;
 int spca504_wait_status (struct gspca_dev*) ;
 int spca50x_GetFirmware (struct gspca_dev*) ;
 int write_vector (struct gspca_dev*,int ,int ) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->bridge) {
 case 131:
  reg_w_riv(gspca_dev, 0x1d, 0x00, 0);
  reg_w_riv(gspca_dev, 0x00, 0x2306, 0x01);
  reg_w_riv(gspca_dev, 0x00, 0x0d04, 0x00);
  reg_w_riv(gspca_dev, 0x00, 0x2000, 0x00);
  reg_w_riv(gspca_dev, 0x00, 0x2301, 0x13);
  reg_w_riv(gspca_dev, 0x00, 0x2306, 0x00);

 case 129:
  spca504B_PollingDataReady(gspca_dev);
  spca50x_GetFirmware(gspca_dev);
  break;
 case 128:
  spca50x_GetFirmware(gspca_dev);
  reg_r(gspca_dev, 0x00, 0x5002, 1);
  reg_w_1(gspca_dev, 0x24, 0, 0, 0);
  reg_r(gspca_dev, 0x24, 0, 1);
  spca504B_PollingDataReady(gspca_dev);
  reg_w_riv(gspca_dev, 0x34, 0, 0);
  spca504B_WaitCmdStatus(gspca_dev);
  break;
 case 130:
  PDEBUG(D_STREAM, "Opening SPCA504 (PC-CAM 600)");
  reg_w_riv(gspca_dev, 0xe0, 0x0000, 0x0000);
  reg_w_riv(gspca_dev, 0xe0, 0x0000, 0x0001);
  spca504_wait_status(gspca_dev);
  if (sd->subtype == LogitechClickSmart420)
   write_vector(gspca_dev,
    spca504A_clicksmart420_open_data,
    ARRAY_SIZE(spca504A_clicksmart420_open_data));
  else
   write_vector(gspca_dev, spca504_pccam600_open_data,
    ARRAY_SIZE(spca504_pccam600_open_data));
  setup_qtable(gspca_dev, qtable_creative_pccam);
  break;
 default:

  PDEBUG(D_STREAM, "Opening SPCA504");
  if (sd->subtype == AiptekMiniPenCam13) {
   spca504_read_info(gspca_dev);


   spca504A_acknowledged_command(gspca_dev, 0x24,
       8, 3, 0x9e, 1);

   spca504A_acknowledged_command(gspca_dev, 0x24,
       8, 3, 0x9e, 0);

   spca504A_acknowledged_command(gspca_dev, 0x24,
       0, 0, 0x9d, 1);


   spca504A_acknowledged_command(gspca_dev, 0x08,
       6, 0, 0x86, 1);






   reg_w_riv(gspca_dev, 0x00, 0x270c, 0x05);

   reg_w_riv(gspca_dev, 0x00, 0x2310, 0x05);
   spca504A_acknowledged_command(gspca_dev, 0x01,
       0x0f, 0, 0xff, 0);
  }

  reg_w_riv(gspca_dev, 0, 0x2000, 0);
  reg_w_riv(gspca_dev, 0, 0x2883, 1);
  setup_qtable(gspca_dev, qtable_spca504_default);
  break;
 }
 return gspca_dev->usb_err;
}
