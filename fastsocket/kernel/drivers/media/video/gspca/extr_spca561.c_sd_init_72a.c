
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dev; } ;


 int D_STREAM ;
 int PDEBUG (int ,char*) ;
 int msleep (int) ;
 int reg_w_val (int ,int,int) ;
 int rev72a_init_data1 ;
 int rev72a_init_data2 ;
 int rev72a_init_sensor1 ;
 int rev72a_init_sensor2 ;
 int rev72a_reset ;
 int write_sensor_72a (struct gspca_dev*,int ) ;
 int write_vector (struct gspca_dev*,int ) ;

__attribute__((used)) static int sd_init_72a(struct gspca_dev *gspca_dev)
{
 PDEBUG(D_STREAM, "Chip revision: 072a");
 write_vector(gspca_dev, rev72a_reset);
 msleep(200);
 write_vector(gspca_dev, rev72a_init_data1);
 write_sensor_72a(gspca_dev, rev72a_init_sensor1);
 write_vector(gspca_dev, rev72a_init_data2);
 write_sensor_72a(gspca_dev, rev72a_init_sensor2);
 reg_w_val(gspca_dev->dev, 0x8112, 0x30);
 return 0;
}
