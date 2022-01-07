
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_i2c {scalar_t__ regs; } ;


 scalar_t__ S3C2410_IICCON ;
 unsigned long S3C2410_IICCON_ACKEN ;
 unsigned long readl (scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void s3c24xx_i2c_disable_ack(struct s3c24xx_i2c *i2c)
{
 unsigned long tmp;

 tmp = readl(i2c->regs + S3C2410_IICCON);
 writel(tmp & ~S3C2410_IICCON_ACKEN, i2c->regs + S3C2410_IICCON);
}
