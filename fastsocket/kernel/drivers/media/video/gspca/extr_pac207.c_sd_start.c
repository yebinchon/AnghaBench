
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int brightness; int gain; int exposure; int avg_lum; scalar_t__ autogain_ignore_frames; scalar_t__ sof_read; } ;
struct gspca_dev {int width; } ;
typedef int __u8 ;


 int D_STREAM ;
 int PDEBUG (int ,char*) ;
 int atomic_set (int *,int) ;
 int msleep (int) ;
 int * pac207_sensor_init ;
 int pac207_write_reg (struct gspca_dev*,int,int) ;
 int pac207_write_regs (struct gspca_dev*,int,int ,int) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 __u8 mode;

 pac207_write_reg(gspca_dev, 0x0f, 0x10);
 pac207_write_regs(gspca_dev, 0x0002, pac207_sensor_init[0], 8);
 pac207_write_regs(gspca_dev, 0x000a, pac207_sensor_init[1], 8);
 pac207_write_regs(gspca_dev, 0x0012, pac207_sensor_init[2], 8);
 pac207_write_regs(gspca_dev, 0x0042, pac207_sensor_init[3], 8);


 if (gspca_dev->width == 176)
  pac207_write_reg(gspca_dev, 0x4a, 0xff);
 else
  pac207_write_reg(gspca_dev, 0x4a, 0x30);
 pac207_write_reg(gspca_dev, 0x4b, 0x00);
 pac207_write_reg(gspca_dev, 0x08, sd->brightness);


 pac207_write_reg(gspca_dev, 0x0e, sd->gain);
 pac207_write_reg(gspca_dev, 0x02, sd->exposure);

 mode = 0x02;
 if (gspca_dev->width == 176) {
  mode |= 0x01;
  PDEBUG(D_STREAM, "pac207_start mode 176x144");
 } else {
  PDEBUG(D_STREAM, "pac207_start mode 352x288");
 }
 pac207_write_reg(gspca_dev, 0x41, mode);

 pac207_write_reg(gspca_dev, 0x13, 0x01);
 pac207_write_reg(gspca_dev, 0x1c, 0x01);
 msleep(10);
 pac207_write_reg(gspca_dev, 0x40, 0x01);

 sd->sof_read = 0;
 sd->autogain_ignore_frames = 0;
 atomic_set(&sd->avg_lum, -1);
 return 0;
}
