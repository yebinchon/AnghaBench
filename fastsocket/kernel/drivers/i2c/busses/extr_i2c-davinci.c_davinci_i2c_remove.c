
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; } ;
struct davinci_i2c_dev {int * clk; int adapter; } ;


 int DAVINCI_I2C_MDR_REG ;
 int IORESOURCE_MEM ;
 int IRQ_I2C ;
 int clk_disable (int *) ;
 int clk_put (int *) ;
 int davinci_i2c_write_reg (struct davinci_i2c_dev*,int ,int ) ;
 int free_irq (int ,struct davinci_i2c_dev*) ;
 int i2c_del_adapter (int *) ;
 int kfree (struct davinci_i2c_dev*) ;
 struct davinci_i2c_dev* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int put_device (int *) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int davinci_i2c_remove(struct platform_device *pdev)
{
 struct davinci_i2c_dev *dev = platform_get_drvdata(pdev);
 struct resource *mem;

 platform_set_drvdata(pdev, ((void*)0));
 i2c_del_adapter(&dev->adapter);
 put_device(&pdev->dev);

 clk_disable(dev->clk);
 clk_put(dev->clk);
 dev->clk = ((void*)0);

 davinci_i2c_write_reg(dev, DAVINCI_I2C_MDR_REG, 0);
 free_irq(IRQ_I2C, dev);
 kfree(dev);

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(mem->start, resource_size(mem));
 return 0;
}
