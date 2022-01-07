
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct sensor_w_data {int member_0; int member_1; int member_3; TYPE_1__ member_2; } ;
struct sd {int sensor_type; scalar_t__ adj_colors; int do_lcd_stop; } ;
struct gspca_dev {int* usb_buf; int width; } ;
typedef int __u8 ;


 int ARRAY_SIZE (struct sensor_w_data const*) ;
 int memcpy (int*,int const*,int) ;
 int mr_write (struct gspca_dev*,int) ;
 int sensor_write_regs (struct gspca_dev*,struct sensor_w_data const*,int ) ;

__attribute__((used)) static int start_vga_cam(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 __u8 *data = gspca_dev->usb_buf;
 int err_code;
 static const __u8 startup_string[] =
  {0x00, 0x0d, 0x01, 0x00, 0x00, 0x2b, 0x00, 0x00,
   0x00, 0x50, 0xc0};


 memcpy(data, startup_string, 11);
 if (!sd->sensor_type) {
  data[5] = 0x00;
  data[10] = 0x91;
 }
 if (sd->sensor_type == 2) {
  data[5] = 0x00;
  data[10] = 0x18;
 }

 switch (gspca_dev->width) {
 case 160:
  data[9] |= 0x0c;

 case 320:
  data[9] |= 0x04;

 case 640:
 default:
  data[3] = 0x50;
  data[4] = 0x78;
  data[6] = 0x04;
  data[8] = 0x03;
  if (sd->sensor_type == 2) {
   data[6] = 2;
   data[8] = 1;
  }
  if (sd->do_lcd_stop)
   data[8] = 0x04;
  break;

 case 176:
  data[9] |= 0x04;

 case 352:
  data[3] = 0x2c;
  data[4] = 0x48;
  data[6] = 0x94;
  data[8] = 0x63;
  if (sd->do_lcd_stop)
   data[8] = 0x64;
  break;
 }

 err_code = mr_write(gspca_dev, 11);
 if (err_code < 0)
  return err_code;

 if (!sd->sensor_type) {
  static const struct sensor_w_data vga_sensor0_init_data[] = {
   {0x01, 0x00, {0x0c, 0x00, 0x04}, 3},
   {0x14, 0x00, {0x01, 0xe4, 0x02, 0x84}, 4},
   {0x20, 0x00, {0x00, 0x80, 0x00, 0x08}, 4},
   {0x25, 0x00, {0x03, 0xa9, 0x80}, 3},
   {0x30, 0x00, {0x30, 0x18, 0x10, 0x18}, 4},
   {0, 0, {0}, 0}
  };
  err_code = sensor_write_regs(gspca_dev, vga_sensor0_init_data,
      ARRAY_SIZE(vga_sensor0_init_data));
 } else if (sd->sensor_type == 1) {
  static const struct sensor_w_data color_adj[] = {
   {0x02, 0x00, {0x06, 0x59, 0x0c, 0x16, 0x00,


    0x05, 0x01, 0x04}, 8}
  };

  static const struct sensor_w_data color_no_adj[] = {
   {0x02, 0x00, {0x06, 0x59, 0x0c, 0x16, 0x00,

    0x07, 0x00, 0x01}, 8}
  };

  static const struct sensor_w_data vga_sensor1_init_data[] = {
   {0x11, 0x04, {0x01}, 1},
   {0x0a, 0x00, {0x00, 0x01, 0x00, 0x00, 0x01,


    0x00, 0x0a}, 7},
   {0x11, 0x04, {0x01}, 1},
   {0x12, 0x00, {0x00, 0x63, 0x00, 0x70, 0x00, 0x00}, 6},
   {0x11, 0x04, {0x01}, 1},
   {0, 0, {0}, 0}
  };

  if (sd->adj_colors)
   err_code = sensor_write_regs(gspca_dev, color_adj,
      ARRAY_SIZE(color_adj));
  else
   err_code = sensor_write_regs(gspca_dev, color_no_adj,
      ARRAY_SIZE(color_no_adj));

  if (err_code < 0)
   return err_code;

  err_code = sensor_write_regs(gspca_dev, vga_sensor1_init_data,
      ARRAY_SIZE(vga_sensor1_init_data));
 } else {
  static const struct sensor_w_data vga_sensor2_init_data[] = {

   {0x01, 0x00, {0x48}, 1},
   {0x02, 0x00, {0x22}, 1},

   {0x05, 0x00, {0x10}, 1},
   {0x06, 0x00, {0x00}, 1},
   {0x07, 0x00, {0x00}, 1},
   {0x08, 0x00, {0x00}, 1},
   {0x09, 0x00, {0x00}, 1},
   {0x12, 0x00, {0x00}, 1},
   {0x13, 0x00, {0x04}, 1},
   {0x14, 0x00, {0x00}, 1},
   {0x15, 0x00, {0x06}, 1},
   {0x16, 0x00, {0x01}, 1},
   {0x17, 0x00, {0xe2}, 1},
   {0x18, 0x00, {0x02}, 1},
   {0x19, 0x00, {0x82}, 1},
   {0x1a, 0x00, {0x00}, 1},
   {0x1b, 0x00, {0x20}, 1},

   {0x1d, 0x00, {0x80}, 1},
   {0x1e, 0x00, {0x08}, 1},
   {0x1f, 0x00, {0x0c}, 1},
   {0x20, 0x00, {0x00}, 1},
   {0, 0, {0}, 0}
  };
  err_code = sensor_write_regs(gspca_dev, vga_sensor2_init_data,
      ARRAY_SIZE(vga_sensor2_init_data));
 }
 return err_code;
}
