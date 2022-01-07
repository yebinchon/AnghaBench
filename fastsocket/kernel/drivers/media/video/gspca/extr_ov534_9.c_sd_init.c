
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {int usb_err; } ;


 int ARRAY_SIZE (int ) ;
 int D_PROBE ;
 int OV534_REG_ADDRESS ;
 int PDEBUG (int ,char*,int) ;
 int bridge_init ;
 int bridge_init_2 ;
 int msleep (int) ;
 int reg_w (struct gspca_dev*,int,int) ;
 int reg_w_array (struct gspca_dev*,int ,int ) ;
 int sccb_read (struct gspca_dev*,int) ;
 int sccb_w_array (struct gspca_dev*,int ,int ) ;
 int sccb_write (struct gspca_dev*,int,int) ;
 int sensor_init ;
 int sensor_init_2 ;
 int set_led (struct gspca_dev*,int ) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 u16 sensor_id;


 reg_w(gspca_dev, 0xe7, 0x3a);
 reg_w(gspca_dev, 0xe0, 0x08);
 msleep(100);


 reg_w(gspca_dev, OV534_REG_ADDRESS, 0x60);


 sccb_write(gspca_dev, 0x12, 0x80);
 msleep(10);


 sccb_read(gspca_dev, 0x0a);
 sensor_id = sccb_read(gspca_dev, 0x0a) << 8;
 sccb_read(gspca_dev, 0x0b);
 sensor_id |= sccb_read(gspca_dev, 0x0b);
 PDEBUG(D_PROBE, "Sensor ID: %04x", sensor_id);


 reg_w_array(gspca_dev, bridge_init,
   ARRAY_SIZE(bridge_init));
 sccb_w_array(gspca_dev, sensor_init,
   ARRAY_SIZE(sensor_init));
 reg_w_array(gspca_dev, bridge_init_2,
   ARRAY_SIZE(bridge_init_2));
 sccb_w_array(gspca_dev, sensor_init_2,
   ARRAY_SIZE(sensor_init_2));
 reg_w(gspca_dev, 0xe0, 0x00);
 reg_w(gspca_dev, 0xe0, 0x01);
 set_led(gspca_dev, 0);
 reg_w(gspca_dev, 0xe0, 0x00);

 return gspca_dev->usb_err;
}
