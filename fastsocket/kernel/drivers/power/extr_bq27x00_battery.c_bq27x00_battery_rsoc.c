
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq27x00_device_info {int dev; } ;


 int BQ27x00_REG_RSOC ;
 int bq27x00_read (int ,int*,int,struct bq27x00_device_info*) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int bq27x00_battery_rsoc(struct bq27x00_device_info *di)
{
 int ret;
 int rsoc = 0;

 ret = bq27x00_read(BQ27x00_REG_RSOC, &rsoc, 1, di);
 if (ret) {
  dev_err(di->dev, "error reading relative State-of-Charge\n");
  return ret;
 }

 return rsoc >> 8;
}
