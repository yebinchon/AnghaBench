
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void send_unknown(struct gspca_dev *gspca_dev, int sensor)
{
 reg_w(gspca_dev, 0x01, 0x0000);
 switch (sensor) {
 case 131:
  reg_w(gspca_dev, 0x03, 0x003a);
  reg_w(gspca_dev, 0x0c, 0x003b);
  reg_w(gspca_dev, 0x08, 0x0038);
  break;
 case 136:
 case 135:
 case 132:
 case 134:
 case 133:
 case 129:
 case 128:
  reg_w(gspca_dev, 0x0d, 0x003a);
  reg_w(gspca_dev, 0x02, 0x003b);
  reg_w(gspca_dev, 0x00, 0x0038);
  break;
 case 130:
  reg_w(gspca_dev, 0x03, 0x003b);
  reg_w(gspca_dev, 0x0c, 0x003a);
  reg_w(gspca_dev, 0x0b, 0x0039);
  reg_w(gspca_dev, 0x0b, 0x0038);
  break;
 }
}
