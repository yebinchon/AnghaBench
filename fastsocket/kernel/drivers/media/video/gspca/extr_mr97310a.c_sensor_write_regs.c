
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_w_data {int len; int data; int flags; int reg; } ;
struct gspca_dev {int dummy; } ;


 int sensor_write_reg (struct gspca_dev*,int ,int ,int ,int ) ;

__attribute__((used)) static int sensor_write_regs(struct gspca_dev *gspca_dev,
 const struct sensor_w_data *data, int len)
{
 int i, rc;

 for (i = 0; i < len; i++) {
  rc = sensor_write_reg(gspca_dev, data[i].reg, data[i].flags,
       data[i].data, data[i].len);
  if (rc < 0)
   return rc;
 }

 return 0;
}
