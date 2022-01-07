
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq27x00_device_info {int dev; } ;


 int BQ27x00_REG_TEMP ;
 int bq27x00_read (int ,int*,int ,struct bq27x00_device_info*) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int bq27x00_battery_temperature(struct bq27x00_device_info *di)
{
 int ret;
 int temp = 0;

 ret = bq27x00_read(BQ27x00_REG_TEMP, &temp, 0, di);
 if (ret) {
  dev_err(di->dev, "error reading temperature\n");
  return ret;
 }

 return (temp >> 2) - 273;
}
