
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int model; scalar_t__ button_state; } ;
struct gspca_dev {int input_dev; int dev; } ;
 int KEY_CAMERA ;
 int cit_model2_Packet1 (struct gspca_dev*,int,int) ;
 int cit_model3_Packet1 (struct gspca_dev*,int,int) ;
 int cit_read_reg (struct gspca_dev*,int,int ) ;
 int cit_send_FF_04_02 (struct gspca_dev*) ;
 int cit_write_reg (struct gspca_dev*,int,int) ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;

__attribute__((used)) static void sd_stop0(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;



 if (!gspca_dev->dev)
  return;

 switch (sd->model) {
 case 132:




  cit_write_reg(gspca_dev, 0x00c0, 0x0100);
  break;
 case 131:
  cit_send_FF_04_02(gspca_dev);
  cit_read_reg(gspca_dev, 0x0100, 0);
  cit_write_reg(gspca_dev, 0x81, 0x0100);
  break;
 case 130:
 case 128:
  cit_model2_Packet1(gspca_dev, 0x0030, 0x0004);

  cit_write_reg(gspca_dev, 0x0080, 0x0100);
  cit_write_reg(gspca_dev, 0x0020, 0x0111);
  cit_write_reg(gspca_dev, 0x00a0, 0x0111);

  cit_model2_Packet1(gspca_dev, 0x0030, 0x0002);

  cit_write_reg(gspca_dev, 0x0020, 0x0111);
  cit_write_reg(gspca_dev, 0x0000, 0x0112);
  break;
 case 129:
  cit_write_reg(gspca_dev, 0x0006, 0x012c);
  cit_model3_Packet1(gspca_dev, 0x0046, 0x0000);
  cit_read_reg(gspca_dev, 0x0116, 0);
  cit_write_reg(gspca_dev, 0x0064, 0x0116);
  cit_read_reg(gspca_dev, 0x0115, 0);
  cit_write_reg(gspca_dev, 0x0003, 0x0115);
  cit_write_reg(gspca_dev, 0x0008, 0x0123);
  cit_write_reg(gspca_dev, 0x0000, 0x0117);
  cit_write_reg(gspca_dev, 0x0000, 0x0112);
  cit_write_reg(gspca_dev, 0x0080, 0x0100);
  break;
 case 133:
  cit_model3_Packet1(gspca_dev, 0x0049, 0x00ff);
  cit_write_reg(gspca_dev, 0x0006, 0x012c);
  cit_write_reg(gspca_dev, 0x0000, 0x0116);




  cit_write_reg(gspca_dev, 0x0008, 0x0123);
  cit_write_reg(gspca_dev, 0x0000, 0x0117);
  cit_write_reg(gspca_dev, 0x0003, 0x0133);
  cit_write_reg(gspca_dev, 0x0000, 0x0111);



  cit_write_reg(gspca_dev, 0x00c0, 0x0100);
  break;
 }
}
