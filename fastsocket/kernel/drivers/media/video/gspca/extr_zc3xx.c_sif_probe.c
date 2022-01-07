
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int D_PROBE ;
 int PDEBUG (int ,char*,int) ;
 int SENSOR_PAS106 ;
 int i2c_read (struct gspca_dev*,int) ;
 int msleep (int) ;
 int reg_w (struct gspca_dev*,int,int) ;
 int send_unknown (struct gspca_dev*,int ) ;
 int start_2wr_probe (struct gspca_dev*,int) ;

__attribute__((used)) static int sif_probe(struct gspca_dev *gspca_dev)
{
 u16 checkword;

 start_2wr_probe(gspca_dev, 0x0f);
 reg_w(gspca_dev, 0x08, 0x008d);
 msleep(150);
 checkword = ((i2c_read(gspca_dev, 0x00) & 0x0f) << 4)
   | ((i2c_read(gspca_dev, 0x01) & 0xf0) >> 4);
 PDEBUG(D_PROBE, "probe sif 0x%04x", checkword);
 if (checkword == 0x0007) {
  send_unknown(gspca_dev, SENSOR_PAS106);
  return 0x0f;
 }
 return -1;
}
