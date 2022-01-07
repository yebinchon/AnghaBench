
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* set_wake ) (unsigned int,unsigned int) ;} ;


 int S3C2412_PWRCFG ;
 unsigned long S3C2412_PWRCFG_RTC_MASKIRQ ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 TYPE_1__ s3c_irq_chip ;
 int stub1 (unsigned int,unsigned int) ;

__attribute__((used)) static int s3c2412_irq_rtc_wake(unsigned int irqno, unsigned int state)
{
 unsigned long pwrcfg;

 pwrcfg = __raw_readl(S3C2412_PWRCFG);
 if (state)
  pwrcfg &= ~S3C2412_PWRCFG_RTC_MASKIRQ;
 else
  pwrcfg |= S3C2412_PWRCFG_RTC_MASKIRQ;
 __raw_writel(pwrcfg, S3C2412_PWRCFG);

 return s3c_irq_chip.set_wake(irqno, state);
}
