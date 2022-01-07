
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_i2c {scalar_t__ state; scalar_t__ regs; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ S3C2410_IICCON ;
 unsigned long S3C2410_IICCON_IRQPEND ;
 scalar_t__ S3C2410_IICSTAT ;
 unsigned long S3C2410_IICSTAT_ARBITR ;
 scalar_t__ STATE_IDLE ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int i2s_s3c_irq_nextbyte (struct s3c24xx_i2c*,unsigned long) ;
 unsigned long readl (scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static irqreturn_t s3c24xx_i2c_irq(int irqno, void *dev_id)
{
 struct s3c24xx_i2c *i2c = dev_id;
 unsigned long status;
 unsigned long tmp;

 status = readl(i2c->regs + S3C2410_IICSTAT);

 if (status & S3C2410_IICSTAT_ARBITR) {

  dev_err(i2c->dev, "deal with arbitration loss\n");
 }

 if (i2c->state == STATE_IDLE) {
  dev_dbg(i2c->dev, "IRQ: error i2c->state == IDLE\n");

  tmp = readl(i2c->regs + S3C2410_IICCON);
  tmp &= ~S3C2410_IICCON_IRQPEND;
  writel(tmp, i2c->regs + S3C2410_IICCON);
  goto out;
 }




 i2s_s3c_irq_nextbyte(i2c, status);

 out:
 return IRQ_HANDLED;
}
