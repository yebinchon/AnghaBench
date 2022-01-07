
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* parent; struct s3c2410_platform_i2c* platform_data; } ;
struct TYPE_7__ {int retries; int class; TYPE_2__ dev; int nr; struct s3c24xx_i2c* algo_data; int * algo; int owner; int name; } ;
struct s3c24xx_i2c {int tx_setup; int irq; int clk; struct s3c24xx_i2c* ioarea; int * regs; TYPE_1__ adap; TYPE_2__* dev; int wait; int lock; } ;
struct s3c2410_platform_i2c {int bus_num; } ;
struct resource {int start; } ;
struct platform_device {TYPE_2__ dev; int name; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int I2C_CLASS_HWMON ;
 int I2C_CLASS_SPD ;
 int IORESOURCE_MEM ;
 int IRQF_DISABLED ;
 scalar_t__ IS_ERR (int ) ;
 int THIS_MODULE ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_get (TYPE_2__*,char*) ;
 int clk_put (int ) ;
 int dev_dbg (TYPE_2__*,char*,int *,...) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_info (TYPE_2__*,char*,int ) ;
 int dev_name (TYPE_2__*) ;
 int free_irq (int,struct s3c24xx_i2c*) ;
 int i2c_add_numbered_adapter (TYPE_1__*) ;
 int init_waitqueue_head (int *) ;
 int * ioremap (int ,int ) ;
 int iounmap (int *) ;
 int kfree (struct s3c24xx_i2c*) ;
 struct s3c24xx_i2c* kzalloc (int,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct s3c24xx_i2c*) ;
 int release_resource (struct s3c24xx_i2c*) ;
 int request_irq (int,int ,int ,int ,struct s3c24xx_i2c*) ;
 struct s3c24xx_i2c* request_mem_region (int ,int ,int ) ;
 int resource_size (struct resource*) ;
 int s3c24xx_i2c_algorithm ;
 int s3c24xx_i2c_deregister_cpufreq (struct s3c24xx_i2c*) ;
 int s3c24xx_i2c_init (struct s3c24xx_i2c*) ;
 int s3c24xx_i2c_irq ;
 int s3c24xx_i2c_register_cpufreq (struct s3c24xx_i2c*) ;
 int spin_lock_init (int *) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int s3c24xx_i2c_probe(struct platform_device *pdev)
{
 struct s3c24xx_i2c *i2c;
 struct s3c2410_platform_i2c *pdata;
 struct resource *res;
 int ret;

 pdata = pdev->dev.platform_data;
 if (!pdata) {
  dev_err(&pdev->dev, "no platform data\n");
  return -EINVAL;
 }

 i2c = kzalloc(sizeof(struct s3c24xx_i2c), GFP_KERNEL);
 if (!i2c) {
  dev_err(&pdev->dev, "no memory for state\n");
  return -ENOMEM;
 }

 strlcpy(i2c->adap.name, "s3c2410-i2c", sizeof(i2c->adap.name));
 i2c->adap.owner = THIS_MODULE;
 i2c->adap.algo = &s3c24xx_i2c_algorithm;
 i2c->adap.retries = 2;
 i2c->adap.class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
 i2c->tx_setup = 50;

 spin_lock_init(&i2c->lock);
 init_waitqueue_head(&i2c->wait);



 i2c->dev = &pdev->dev;
 i2c->clk = clk_get(&pdev->dev, "i2c");
 if (IS_ERR(i2c->clk)) {
  dev_err(&pdev->dev, "cannot get clock\n");
  ret = -ENOENT;
  goto err_noclk;
 }

 dev_dbg(&pdev->dev, "clock source %p\n", i2c->clk);

 clk_enable(i2c->clk);



 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res == ((void*)0)) {
  dev_err(&pdev->dev, "cannot find IO resource\n");
  ret = -ENOENT;
  goto err_clk;
 }

 i2c->ioarea = request_mem_region(res->start, resource_size(res),
      pdev->name);

 if (i2c->ioarea == ((void*)0)) {
  dev_err(&pdev->dev, "cannot request IO\n");
  ret = -ENXIO;
  goto err_clk;
 }

 i2c->regs = ioremap(res->start, resource_size(res));

 if (i2c->regs == ((void*)0)) {
  dev_err(&pdev->dev, "cannot map IO\n");
  ret = -ENXIO;
  goto err_ioarea;
 }

 dev_dbg(&pdev->dev, "registers %p (%p, %p)\n",
  i2c->regs, i2c->ioarea, res);



 i2c->adap.algo_data = i2c;
 i2c->adap.dev.parent = &pdev->dev;



 ret = s3c24xx_i2c_init(i2c);
 if (ret != 0)
  goto err_iomap;





 i2c->irq = ret = platform_get_irq(pdev, 0);
 if (ret <= 0) {
  dev_err(&pdev->dev, "cannot find IRQ\n");
  goto err_iomap;
 }

 ret = request_irq(i2c->irq, s3c24xx_i2c_irq, IRQF_DISABLED,
     dev_name(&pdev->dev), i2c);

 if (ret != 0) {
  dev_err(&pdev->dev, "cannot claim IRQ %d\n", i2c->irq);
  goto err_iomap;
 }

 ret = s3c24xx_i2c_register_cpufreq(i2c);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to register cpufreq notifier\n");
  goto err_irq;
 }







 i2c->adap.nr = pdata->bus_num;

 ret = i2c_add_numbered_adapter(&i2c->adap);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to add bus to i2c core\n");
  goto err_cpufreq;
 }

 platform_set_drvdata(pdev, i2c);

 dev_info(&pdev->dev, "%s: S3C I2C adapter\n", dev_name(&i2c->adap.dev));
 return 0;

 err_cpufreq:
 s3c24xx_i2c_deregister_cpufreq(i2c);

 err_irq:
 free_irq(i2c->irq, i2c);

 err_iomap:
 iounmap(i2c->regs);

 err_ioarea:
 release_resource(i2c->ioarea);
 kfree(i2c->ioarea);

 err_clk:
 clk_disable(i2c->clk);
 clk_put(i2c->clk);

 err_noclk:
 kfree(i2c);
 return ret;
}
