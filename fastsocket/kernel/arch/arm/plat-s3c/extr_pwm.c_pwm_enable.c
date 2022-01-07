
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int running; } ;


 int S3C2410_TCON ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned long pwm_tcon_start (struct pwm_device*) ;

int pwm_enable(struct pwm_device *pwm)
{
 unsigned long flags;
 unsigned long tcon;

 local_irq_save(flags);

 tcon = __raw_readl(S3C2410_TCON);
 tcon |= pwm_tcon_start(pwm);
 __raw_writel(tcon, S3C2410_TCON);

 local_irq_restore(flags);

 pwm->running = 1;
 return 0;
}
