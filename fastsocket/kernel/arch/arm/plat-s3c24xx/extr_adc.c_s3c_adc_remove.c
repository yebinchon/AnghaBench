
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct adc_device {int clk; int irq; int regs; } ;


 int clk_disable (int ) ;
 int clk_put (int ) ;
 int free_irq (int ,struct adc_device*) ;
 int iounmap (int ) ;
 int kfree (struct adc_device*) ;
 struct adc_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int s3c_adc_remove(struct platform_device *pdev)
{
 struct adc_device *adc = platform_get_drvdata(pdev);

 iounmap(adc->regs);
 free_irq(adc->irq, adc);
 clk_disable(adc->clk);
 clk_put(adc->clk);
 kfree(adc);

 return 0;
}
