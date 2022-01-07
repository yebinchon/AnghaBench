
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq27x00_device_info {int dev; } ;


 int BQ27x00_REG_AI ;
 int BQ27x00_REG_FLAGS ;
 int bq27x00_read (int ,int*,int ,struct bq27x00_device_info*) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int bq27x00_battery_current(struct bq27x00_device_info *di)
{
 int ret;
 int curr = 0;
 int flags = 0;

 ret = bq27x00_read(BQ27x00_REG_AI, &curr, 0, di);
 if (ret) {
  dev_err(di->dev, "error reading current\n");
  return 0;
 }
 ret = bq27x00_read(BQ27x00_REG_FLAGS, &flags, 0, di);
 if (ret < 0) {
  dev_err(di->dev, "error reading flags\n");
  return 0;
 }
 if ((flags & (1 << 7)) != 0) {
  dev_dbg(di->dev, "negative current!\n");
  return -curr;
 }
 return curr;
}
