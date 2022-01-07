
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sd {size_t sensor; scalar_t__ bridge; int reg11; int avg_lum; scalar_t__ exp_too_low_cnt; scalar_t__ exp_too_high_cnt; scalar_t__ autogain_ignore_frames; scalar_t__ frames_to_drop; } ;
struct cam {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; struct cam cam; } ;
typedef int __u8 ;
struct TYPE_4__ {int flags; int sensor_init_size; int sensor_init; int bridge_init; } ;
struct TYPE_3__ {int priv; } ;


 scalar_t__ BRIDGE_103 ;
 int F_SIF ;
 int MODE_RAW ;
 int MODE_REDUCED_SIF ;



 int atomic_set (int *,int) ;
 int i2c_w (struct gspca_dev*,int const*) ;
 int i2c_w_vector (struct gspca_dev*,int ,int ) ;
 int memcpy (int*,int ,int) ;
 int msleep (int) ;
 int reg_w (struct gspca_dev*,int,int*,int) ;
 TYPE_2__* sensor_data ;
 int setbrightness (struct gspca_dev*) ;
 int setexposure (struct gspca_dev*) ;
 int setfreq (struct gspca_dev*) ;
 int setgain (struct gspca_dev*) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam = &gspca_dev->cam;
 int i, mode;
 __u8 regs[0x31];

 mode = cam->cam_mode[gspca_dev->curr_mode].priv & 0x07;

 memcpy(&regs[0x01], sensor_data[sd->sensor].bridge_init, 0x19);

 regs[0x18] |= mode << 4;


 if (sd->bridge == BRIDGE_103) {
  regs[0x05] = 0x20;
  regs[0x06] = 0x20;
  regs[0x07] = 0x20;
 } else {
  regs[0x10] = 0x00;
  regs[0x11] = 0x00;
 }


 if (sensor_data[sd->sensor].flags & F_SIF) {
  regs[0x1a] = 0x14;
  regs[0x1b] = 0x0a;
  regs[0x1c] = 0x02;
  regs[0x1d] = 0x02;
  regs[0x1e] = 0x09;
  regs[0x1f] = 0x07;
 } else {
  regs[0x1a] = 0x1d;
  regs[0x1b] = 0x10;
  regs[0x1c] = 0x05;
  regs[0x1d] = 0x03;
  regs[0x1e] = 0x0f;
  regs[0x1f] = 0x0c;
 }


 for (i = 0; i < 16; i++)
  regs[0x20 + i] = i * 16;
 regs[0x20 + i] = 255;


 switch (sd->sensor) {
 case 128:




  regs[0x19] = mode ? 0x23 : 0x43;
  break;
 case 130:




  if (sd->bridge == BRIDGE_103) {
   regs[0x01] = 0x44;
   regs[0x12] = 0x02;
  }
 }

 if (cam->cam_mode[gspca_dev->curr_mode].priv & MODE_RAW)
  regs[0x18] &= ~0x80;


 if (cam->cam_mode[gspca_dev->curr_mode].priv & MODE_REDUCED_SIF) {
  regs[0x12] += 16;
  regs[0x13] += 24;
  regs[0x15] = 320 / 16;
  regs[0x16] = 240 / 16;
 }


 reg_w(gspca_dev, 0x01, &regs[0x01], 1);

 reg_w(gspca_dev, 0x17, &regs[0x17], 1);

 reg_w(gspca_dev, 0x01, &regs[0x01],
       (sd->bridge == BRIDGE_103) ? 0x30 : 0x1f);


 i2c_w_vector(gspca_dev, sensor_data[sd->sensor].sensor_init,
   sensor_data[sd->sensor].sensor_init_size);


 switch (sd->sensor) {
 case 129: {
  const __u8 i2cpclockdiv[] =
   {0xa0, 0x40, 0x02, 0x03, 0x00, 0x00, 0x00, 0x10};

  if (mode)
   i2c_w(gspca_dev, i2cpclockdiv);
  break;
     }
 case 130:


  if (sd->bridge == BRIDGE_103) {
   const __u8 i2c[] = { 0xa0, 0x21, 0x13,
          0x80, 0x00, 0x00, 0x00, 0x10 };
   i2c_w(gspca_dev, i2c);
  }
  break;
 }

 reg_w(gspca_dev, 0x15, &regs[0x15], 2);

 reg_w(gspca_dev, 0x18, &regs[0x18], 1);

 reg_w(gspca_dev, 0x12, &regs[0x12], 1);

 reg_w(gspca_dev, 0x13, &regs[0x13], 1);


 reg_w(gspca_dev, 0x17, &regs[0x17], 1);

 reg_w(gspca_dev, 0x19, &regs[0x19], 1);

 reg_w(gspca_dev, 0x1c, &regs[0x1c], 4);

 reg_w(gspca_dev, 0x01, &regs[0x01], 1);

 reg_w(gspca_dev, 0x18, &regs[0x18], 2);
 msleep(20);

 sd->reg11 = -1;

 setgain(gspca_dev);
 setbrightness(gspca_dev);
 setexposure(gspca_dev);
 setfreq(gspca_dev);

 sd->frames_to_drop = 0;
 sd->autogain_ignore_frames = 0;
 sd->exp_too_high_cnt = 0;
 sd->exp_too_low_cnt = 0;
 atomic_set(&sd->avg_lum, -1);
 return 0;
}
