
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq27x00_device_info {int dev; } ;


 int BQ27x00_REG_VOLT ;
 int bq27x00_read (int ,int*,int ,struct bq27x00_device_info*) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int bq27x00_battery_voltage(struct bq27x00_device_info *di)
{
 int ret;
 int volt = 0;

 ret = bq27x00_read(BQ27x00_REG_VOLT, &volt, 0, di);
 if (ret) {
  dev_err(di->dev, "error reading voltage\n");
  return ret;
 }

 return volt;
}
