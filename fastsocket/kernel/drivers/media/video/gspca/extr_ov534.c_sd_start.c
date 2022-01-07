
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; int usb_err; TYPE_2__ cam; } ;
struct TYPE_3__ {int priv; } ;


 int ARRAY_SIZE (int ) ;
 int bridge_start_qvga ;
 int bridge_start_vga ;
 int ov534_reg_write (struct gspca_dev*,int,int) ;
 int ov534_set_led (struct gspca_dev*,int) ;
 int reg_w_array (struct gspca_dev*,int ,int ) ;
 int sccb_w_array (struct gspca_dev*,int ,int ) ;
 int sensor_start_qvga ;
 int sensor_start_vga ;
 int set_frame_rate (struct gspca_dev*) ;
 int setaec (struct gspca_dev*) ;
 int setagc (struct gspca_dev*) ;
 int setawb (struct gspca_dev*) ;
 int setbrightness (struct gspca_dev*) ;
 int setcontrast (struct gspca_dev*) ;
 int setexposure (struct gspca_dev*) ;
 int setfreqfltr (struct gspca_dev*) ;
 int setgain (struct gspca_dev*) ;
 int sethflip (struct gspca_dev*) ;
 int setsharpness (struct gspca_dev*) ;
 int setvflip (struct gspca_dev*) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 int mode;

 mode = gspca_dev->cam.cam_mode[gspca_dev->curr_mode].priv;
 if (mode != 0) {
  reg_w_array(gspca_dev, bridge_start_qvga,
    ARRAY_SIZE(bridge_start_qvga));
  sccb_w_array(gspca_dev, sensor_start_qvga,
    ARRAY_SIZE(sensor_start_qvga));
 } else {
  reg_w_array(gspca_dev, bridge_start_vga,
    ARRAY_SIZE(bridge_start_vga));
  sccb_w_array(gspca_dev, sensor_start_vga,
    ARRAY_SIZE(sensor_start_vga));
 }
 set_frame_rate(gspca_dev);

 setagc(gspca_dev);
 setawb(gspca_dev);
 setaec(gspca_dev);
 setgain(gspca_dev);
 setexposure(gspca_dev);
 setbrightness(gspca_dev);
 setcontrast(gspca_dev);
 setsharpness(gspca_dev);
 setvflip(gspca_dev);
 sethflip(gspca_dev);
 setfreqfltr(gspca_dev);

 ov534_set_led(gspca_dev, 1);
 ov534_reg_write(gspca_dev, 0xe0, 0x00);
 return gspca_dev->usb_err;
}
