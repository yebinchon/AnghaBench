
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct clock_event_device {int dummy; } ;
typedef scalar_t__ s32 ;


 int ETIME ;
 int HPET_COUNTER ;
 scalar_t__ HPET_MIN_CYCLES ;
 int HPET_Tn_CMP (int) ;
 scalar_t__ hpet_readl (int ) ;
 int hpet_writel (scalar_t__,int ) ;

__attribute__((used)) static int hpet_next_event(unsigned long delta,
      struct clock_event_device *evt, int timer)
{
 u32 cnt;
 s32 res;

 cnt = hpet_readl(HPET_COUNTER);
 cnt += (u32) delta;
 hpet_writel(cnt, HPET_Tn_CMP(timer));
 res = (s32)(cnt - (u32)hpet_readl(HPET_COUNTER));

 return res < HPET_MIN_CYCLES ? -ETIME : 0;
}
