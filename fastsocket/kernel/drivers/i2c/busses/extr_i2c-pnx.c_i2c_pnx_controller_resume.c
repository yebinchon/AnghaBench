
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct i2c_pnx_data {int (* resume ) (struct platform_device*) ;} ;


 struct i2c_pnx_data* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct platform_device*) ;

__attribute__((used)) static int i2c_pnx_controller_resume(struct platform_device *pdev)
{
 struct i2c_pnx_data *i2c_pnx = platform_get_drvdata(pdev);
 return i2c_pnx->resume(pdev);
}
