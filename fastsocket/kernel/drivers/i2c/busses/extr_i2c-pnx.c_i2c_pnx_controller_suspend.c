
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct i2c_pnx_data {int (* suspend ) (struct platform_device*,int ) ;} ;
typedef int pm_message_t ;


 struct i2c_pnx_data* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct platform_device*,int ) ;

__attribute__((used)) static int i2c_pnx_controller_suspend(struct platform_device *pdev,
          pm_message_t state)
{
 struct i2c_pnx_data *i2c_pnx = platform_get_drvdata(pdev);
 return i2c_pnx->suspend(pdev, state);
}
