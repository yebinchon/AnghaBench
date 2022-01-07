
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
 int msleep (int) ;
 int ov534_reg_write (struct gspca_dev*,int,int) ;
 int ov534_set_led (struct gspca_dev*,int) ;
 int reg_w_array (struct gspca_dev*,int ,int ) ;
 int sccb_reg_read (struct gspca_dev*,int) ;
 int sccb_reg_write (struct gspca_dev*,int,int) ;
 int sccb_w_array (struct gspca_dev*,int ,int ) ;
 int sensor_init ;
 int set_frame_rate (struct gspca_dev*) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 u16 sensor_id;


 ov534_reg_write(gspca_dev, 0xe7, 0x3a);
 ov534_reg_write(gspca_dev, 0xe0, 0x08);
 msleep(100);


 ov534_reg_write(gspca_dev, OV534_REG_ADDRESS, 0x42);


 sccb_reg_write(gspca_dev, 0x12, 0x80);
 msleep(10);


 sccb_reg_read(gspca_dev, 0x0a);
 sensor_id = sccb_reg_read(gspca_dev, 0x0a) << 8;
 sccb_reg_read(gspca_dev, 0x0b);
 sensor_id |= sccb_reg_read(gspca_dev, 0x0b);
 PDEBUG(D_PROBE, "Sensor ID: %04x", sensor_id);


 reg_w_array(gspca_dev, bridge_init,
   ARRAY_SIZE(bridge_init));
 ov534_set_led(gspca_dev, 1);
 sccb_w_array(gspca_dev, sensor_init,
   ARRAY_SIZE(sensor_init));
 ov534_reg_write(gspca_dev, 0xe0, 0x09);
 ov534_set_led(gspca_dev, 0);
 set_frame_rate(gspca_dev);

 return gspca_dev->usb_err;
}
