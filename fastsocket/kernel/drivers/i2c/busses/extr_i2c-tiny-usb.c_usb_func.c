
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_adapter {int dev; } ;
typedef int func ;
typedef int __le32 ;


 int CMD_GET_FUNC ;
 int dev_err (int *,char*) ;
 int le32_to_cpu (int ) ;
 int usb_read (struct i2c_adapter*,int ,int ,int ,int *,int) ;

__attribute__((used)) static u32 usb_func(struct i2c_adapter *adapter)
{
 __le32 func;


 if (usb_read(adapter, CMD_GET_FUNC, 0, 0, &func, sizeof(func)) !=
     sizeof(func)) {
  dev_err(&adapter->dev, "failure reading functionality\n");
  return 0;
 }

 return le32_to_cpu(func);
}
