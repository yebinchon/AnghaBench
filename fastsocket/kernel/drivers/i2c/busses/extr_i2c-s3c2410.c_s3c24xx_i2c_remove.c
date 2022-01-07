
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_i2c {struct s3c24xx_i2c* ioarea; int regs; int clk; int irq; int adap; } ;
struct platform_device {int dummy; } ;


 int clk_disable (int ) ;
 int clk_put (int ) ;
 int free_irq (int ,struct s3c24xx_i2c*) ;
 int i2c_del_adapter (int *) ;
 int iounmap (int ) ;
 int kfree (struct s3c24xx_i2c*) ;
 struct s3c24xx_i2c* platform_get_drvdata (struct platform_device*) ;
 int release_resource (struct s3c24xx_i2c*) ;
 int s3c24xx_i2c_deregister_cpufreq (struct s3c24xx_i2c*) ;

__attribute__((used)) static int s3c24xx_i2c_remove(struct platform_device *pdev)
{
 struct s3c24xx_i2c *i2c = platform_get_drvdata(pdev);

 s3c24xx_i2c_deregister_cpufreq(i2c);

 i2c_del_adapter(&i2c->adap);
 free_irq(i2c->irq, i2c);

 clk_disable(i2c->clk);
 clk_put(i2c->clk);

 iounmap(i2c->regs);

 release_resource(i2c->ioarea);
 kfree(i2c->ioarea);
 kfree(i2c);

 return 0;
}
