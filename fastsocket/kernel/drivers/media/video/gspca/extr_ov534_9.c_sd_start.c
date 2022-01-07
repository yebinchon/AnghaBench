
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int curr_mode; int usb_err; } ;


 int ARRAY_SIZE (int ) ;




 int bridge_start_qvga ;
 int bridge_start_svga ;
 int bridge_start_sxga ;
 int bridge_start_vga ;
 int bridge_start_xga ;
 int reg_w (struct gspca_dev*,int,int) ;
 int reg_w_array (struct gspca_dev*,int ,int ) ;
 int sccb_w_array (struct gspca_dev*,int ,int ) ;
 int sensor_start_1_svga ;
 int sensor_start_1_sxga ;
 int sensor_start_1_vga ;
 int sensor_start_1_xga ;
 int sensor_start_2_qvga ;
 int sensor_start_2_svga ;
 int sensor_start_2_sxga ;
 int sensor_start_2_vga ;
 int set_led (struct gspca_dev*,int) ;
 int setautogain (struct gspca_dev*) ;
 int setbrightness (struct gspca_dev*) ;
 int setcontrast (struct gspca_dev*) ;
 int setexposure (struct gspca_dev*) ;
 int setfreq (struct gspca_dev*) ;
 int setsatur (struct gspca_dev*) ;
 int setsharpness (struct gspca_dev*) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 switch (gspca_dev->curr_mode) {
 case 131:
  sccb_w_array(gspca_dev, sensor_start_1_vga,
    ARRAY_SIZE(sensor_start_1_vga));
  reg_w_array(gspca_dev, bridge_start_qvga,
    ARRAY_SIZE(bridge_start_qvga));
  sccb_w_array(gspca_dev, sensor_start_2_qvga,
    ARRAY_SIZE(sensor_start_2_qvga));
  break;
 case 129:
  sccb_w_array(gspca_dev, sensor_start_1_vga,
    ARRAY_SIZE(sensor_start_1_vga));
  reg_w_array(gspca_dev, bridge_start_vga,
    ARRAY_SIZE(bridge_start_vga));
  sccb_w_array(gspca_dev, sensor_start_2_vga,
    ARRAY_SIZE(sensor_start_2_vga));
  break;
 case 130:
  sccb_w_array(gspca_dev, sensor_start_1_svga,
    ARRAY_SIZE(sensor_start_1_svga));
  reg_w_array(gspca_dev, bridge_start_svga,
    ARRAY_SIZE(bridge_start_svga));
  sccb_w_array(gspca_dev, sensor_start_2_svga,
    ARRAY_SIZE(sensor_start_2_svga));
  break;
 case 128:
  sccb_w_array(gspca_dev, sensor_start_1_xga,
    ARRAY_SIZE(sensor_start_1_xga));
  reg_w_array(gspca_dev, bridge_start_xga,
    ARRAY_SIZE(bridge_start_xga));
  sccb_w_array(gspca_dev, sensor_start_2_svga,
    ARRAY_SIZE(sensor_start_2_svga));
  break;
 default:

  sccb_w_array(gspca_dev, sensor_start_1_sxga,
    ARRAY_SIZE(sensor_start_1_sxga));
  reg_w_array(gspca_dev, bridge_start_sxga,
    ARRAY_SIZE(bridge_start_sxga));
  sccb_w_array(gspca_dev, sensor_start_2_sxga,
    ARRAY_SIZE(sensor_start_2_sxga));
  break;
 }
 setfreq(gspca_dev);
 setautogain(gspca_dev);
 setbrightness(gspca_dev);
 setcontrast(gspca_dev);
 setexposure(gspca_dev);
 setsharpness(gspca_dev);
 setsatur(gspca_dev);

 reg_w(gspca_dev, 0xe0, 0x00);
 reg_w(gspca_dev, 0xe0, 0x00);
 set_led(gspca_dev, 1);
 return gspca_dev->usb_err;
}
