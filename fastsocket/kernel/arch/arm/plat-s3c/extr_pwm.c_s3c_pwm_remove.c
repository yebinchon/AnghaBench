
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int clk; int clk_div; } ;
struct platform_device {int dummy; } ;


 int clk_put (int ) ;
 int kfree (struct pwm_device*) ;
 struct pwm_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int s3c_pwm_remove(struct platform_device *pdev)
{
 struct pwm_device *pwm = platform_get_drvdata(pdev);

 clk_put(pwm->clk_div);
 clk_put(pwm->clk);
 kfree(pwm);

 return 0;
}
