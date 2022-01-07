
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct s3c24xx_i2c {TYPE_1__* dev; scalar_t__ regs; } ;
struct s3c2410_platform_i2c {unsigned int slave_addr; int (* cfg_gpio ) (int ) ;} ;
struct TYPE_5__ {struct s3c2410_platform_i2c* platform_data; } ;


 int EINVAL ;
 scalar_t__ S3C2410_IICADD ;
 scalar_t__ S3C2410_IICCON ;
 unsigned long S3C2410_IICCON_ACKEN ;
 unsigned long S3C2410_IICCON_IRQEN ;
 int dev_dbg (TYPE_1__*,char*,unsigned long) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*,unsigned int) ;
 scalar_t__ s3c24xx_i2c_clockrate (struct s3c24xx_i2c*,unsigned int*) ;
 int stub1 (int ) ;
 int to_platform_device (TYPE_1__*) ;
 int writeb (unsigned int,scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int s3c24xx_i2c_init(struct s3c24xx_i2c *i2c)
{
 unsigned long iicon = S3C2410_IICCON_IRQEN | S3C2410_IICCON_ACKEN;
 struct s3c2410_platform_i2c *pdata;
 unsigned int freq;



 pdata = i2c->dev->platform_data;



 if (pdata->cfg_gpio)
  pdata->cfg_gpio(to_platform_device(i2c->dev));



 writeb(pdata->slave_addr, i2c->regs + S3C2410_IICADD);

 dev_info(i2c->dev, "slave address 0x%02x\n", pdata->slave_addr);

 writel(iicon, i2c->regs + S3C2410_IICCON);



 if (s3c24xx_i2c_clockrate(i2c, &freq) != 0) {
  writel(0, i2c->regs + S3C2410_IICCON);
  dev_err(i2c->dev, "cannot meet bus frequency required\n");
  return -EINVAL;
 }



 dev_info(i2c->dev, "bus frequency set to %d KHz\n", freq);
 dev_dbg(i2c->dev, "S3C2410_IICCON=0x%02lx\n", iicon);

 return 0;
}
