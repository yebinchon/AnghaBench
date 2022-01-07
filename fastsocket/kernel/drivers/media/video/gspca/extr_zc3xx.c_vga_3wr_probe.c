
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sd {int chip_revision; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_3__ {int revision; int internal_sensor_id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int D_PROBE ;
 int PDEBUG (int ,char*,...) ;
 int SENSOR_GC0305 ;
 int SENSOR_OV7620 ;
 int SENSOR_PB0330 ;
 int SENSOR_PO2030 ;
 TYPE_1__* chipset_revision_sensor ;
 int i2c_read (struct gspca_dev*,int) ;
 int msleep (int) ;
 int reg_r (struct gspca_dev*,int) ;
 int reg_w (struct gspca_dev*,int,int) ;
 int send_unknown (struct gspca_dev*,int ) ;

__attribute__((used)) static int vga_3wr_probe(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int i;
 u8 retbyte;
 u16 retword;


 reg_w(gspca_dev, 0x02, 0x0010);
 reg_r(gspca_dev, 0x0010);
 reg_w(gspca_dev, 0x01, 0x0000);
 reg_w(gspca_dev, 0x00, 0x0010);
 reg_w(gspca_dev, 0x01, 0x0001);
 reg_w(gspca_dev, 0x91, 0x008b);
 reg_w(gspca_dev, 0x03, 0x0012);
 reg_w(gspca_dev, 0x01, 0x0012);
 reg_w(gspca_dev, 0x05, 0x0012);
 retword = i2c_read(gspca_dev, 0x14);
 if (retword != 0)
  return 0x11;
 retword = i2c_read(gspca_dev, 0x15);
 if (retword != 0)
  return 0x11;
 retword = i2c_read(gspca_dev, 0x16);
 if (retword != 0)
  return 0x11;

 reg_w(gspca_dev, 0x02, 0x0010);
 retword = reg_r(gspca_dev, 0x000b) << 8;
 retword |= reg_r(gspca_dev, 0x000a);
 PDEBUG(D_PROBE, "probe 3wr vga 1 0x%04x", retword);
 reg_r(gspca_dev, 0x0010);
 if ((retword & 0xff00) == 0x6400)
  return 0x02;
 for (i = 0; i < ARRAY_SIZE(chipset_revision_sensor); i++) {
  if (chipset_revision_sensor[i].revision == retword) {
   sd->chip_revision = retword;
   send_unknown(gspca_dev, SENSOR_PB0330);
   return chipset_revision_sensor[i].internal_sensor_id;
  }
 }

 reg_w(gspca_dev, 0x01, 0x0000);
 reg_w(gspca_dev, 0x01, 0x0001);
 reg_w(gspca_dev, 0xdd, 0x008b);
 reg_w(gspca_dev, 0x0a, 0x0010);
 reg_w(gspca_dev, 0x03, 0x0012);
 reg_w(gspca_dev, 0x01, 0x0012);
 retword = i2c_read(gspca_dev, 0x00);
 if (retword != 0) {
  PDEBUG(D_PROBE, "probe 3wr vga type 0a");
  return 0x0a;
 }

 reg_w(gspca_dev, 0x01, 0x0000);
 reg_w(gspca_dev, 0x01, 0x0001);
 reg_w(gspca_dev, 0x98, 0x008b);
 reg_w(gspca_dev, 0x01, 0x0010);
 reg_w(gspca_dev, 0x03, 0x0012);
 msleep(2);
 reg_w(gspca_dev, 0x01, 0x0012);
 retword = i2c_read(gspca_dev, 0x00);
 if (retword != 0) {
  PDEBUG(D_PROBE, "probe 3wr vga type %02x", retword);
  if (retword == 0x0011)
   return 0x0303;
  if (retword == 0x0029)
   send_unknown(gspca_dev, SENSOR_GC0305);
  return retword;
 }

 reg_w(gspca_dev, 0x01, 0x0000);
 reg_w(gspca_dev, 0x01, 0x0001);
 reg_w(gspca_dev, 0xa1, 0x008b);
 reg_w(gspca_dev, 0x08, 0x008d);
 reg_w(gspca_dev, 0x06, 0x0010);
 reg_w(gspca_dev, 0x01, 0x0012);
 reg_w(gspca_dev, 0x05, 0x0012);
 if (i2c_read(gspca_dev, 0x1c) == 0x007f
     && i2c_read(gspca_dev, 0x1d) == 0x00a2) {
  send_unknown(gspca_dev, SENSOR_OV7620);
  return 0x06;
 }

 reg_w(gspca_dev, 0x01, 0x0000);
 reg_w(gspca_dev, 0x00, 0x0002);
 reg_w(gspca_dev, 0x01, 0x0010);
 reg_w(gspca_dev, 0x01, 0x0001);
 reg_w(gspca_dev, 0xee, 0x008b);
 reg_w(gspca_dev, 0x03, 0x0012);
 reg_w(gspca_dev, 0x01, 0x0012);
 reg_w(gspca_dev, 0x05, 0x0012);
 retword = i2c_read(gspca_dev, 0x00) << 8;
 retword |= i2c_read(gspca_dev, 0x01);
 PDEBUG(D_PROBE, "probe 3wr vga 2 0x%04x", retword);
 if (retword == 0x2030) {
  retbyte = i2c_read(gspca_dev, 0x02);
  PDEBUG(D_PROBE, "sensor PO2030 rev 0x%02x", retbyte);
  send_unknown(gspca_dev, SENSOR_PO2030);
  return retword;
 }

 reg_w(gspca_dev, 0x01, 0x0000);
 reg_w(gspca_dev, 0x0a, 0x0010);
 reg_w(gspca_dev, 0xd3, 0x008b);
 reg_w(gspca_dev, 0x01, 0x0001);
 reg_w(gspca_dev, 0x03, 0x0012);
 reg_w(gspca_dev, 0x01, 0x0012);
 reg_w(gspca_dev, 0x05, 0x0012);
 reg_w(gspca_dev, 0xd3, 0x008b);
 retword = i2c_read(gspca_dev, 0x01);
 if (retword != 0) {
  PDEBUG(D_PROBE, "probe 3wr vga type 0a ? ret: %04x", retword);
  return 0x16;
 }
 return -1;
}
