
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {unsigned int pwm_id; unsigned int tcon_base; void* clk; void* clk_div; struct platform_device* pdev; } ;
struct device {int dummy; } ;
struct platform_device {unsigned int id; struct device dev; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int S3C2410_TCON ;
 int __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 void* clk_get (struct device*,char*) ;
 int clk_get_rate (void*) ;
 int clk_put (void*) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int ,int ,char*,int) ;
 int kfree (struct pwm_device*) ;
 struct pwm_device* kzalloc (int,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int platform_set_drvdata (struct platform_device*,struct pwm_device*) ;
 int pwm_dbg (struct pwm_device*,char*,int) ;
 scalar_t__ pwm_is_tdiv (struct pwm_device*) ;
 int pwm_register (struct pwm_device*) ;
 unsigned long pwm_tcon_invert (struct pwm_device*) ;

__attribute__((used)) static int s3c_pwm_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct pwm_device *pwm;
 unsigned long flags;
 unsigned long tcon;
 unsigned int id = pdev->id;
 int ret;

 if (id == 4) {
  dev_err(dev, "TIMER4 is currently not supported\n");
  return -ENXIO;
 }

 pwm = kzalloc(sizeof(struct pwm_device), GFP_KERNEL);
 if (pwm == ((void*)0)) {
  dev_err(dev, "failed to allocate pwm_device\n");
  return -ENOMEM;
 }

 pwm->pdev = pdev;
 pwm->pwm_id = id;


 pwm->tcon_base = id == 0 ? 0 : (id * 4) + 4;

 pwm->clk = clk_get(dev, "pwm-tin");
 if (IS_ERR(pwm->clk)) {
  dev_err(dev, "failed to get pwm tin clk\n");
  ret = PTR_ERR(pwm->clk);
  goto err_alloc;
 }

 pwm->clk_div = clk_get(dev, "pwm-tdiv");
 if (IS_ERR(pwm->clk_div)) {
  dev_err(dev, "failed to get pwm tdiv clk\n");
  ret = PTR_ERR(pwm->clk_div);
  goto err_clk_tin;
 }

 local_irq_save(flags);

 tcon = __raw_readl(S3C2410_TCON);
 tcon |= pwm_tcon_invert(pwm);
 __raw_writel(tcon, S3C2410_TCON);

 local_irq_restore(flags);


 ret = pwm_register(pwm);
 if (ret) {
  dev_err(dev, "failed to register pwm\n");
  goto err_clk_tdiv;
 }

 pwm_dbg(pwm, "config bits %02x\n",
  (__raw_readl(S3C2410_TCON) >> pwm->tcon_base) & 0x0f);

 dev_info(dev, "tin at %lu, tdiv at %lu, tin=%sclk, base %d\n",
   clk_get_rate(pwm->clk),
   clk_get_rate(pwm->clk_div),
   pwm_is_tdiv(pwm) ? "div" : "ext", pwm->tcon_base);

 platform_set_drvdata(pdev, pwm);
 return 0;

 err_clk_tdiv:
 clk_put(pwm->clk_div);

 err_clk_tin:
 clk_put(pwm->clk);

 err_alloc:
 kfree(pwm);
 return ret;
}
