
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int SYS_CNTRL_M21 ;
 int SYS_COUNTER_CNTRL ;
 int SYS_RTCMATCH2 ;
 int SYS_RTCREAD ;
 int au_readl (int ) ;
 int au_sync () ;
 int au_writel (unsigned long,int ) ;

__attribute__((used)) static int au1x_rtcmatch2_set_next_event(unsigned long delta,
      struct clock_event_device *cd)
{
 delta += au_readl(SYS_RTCREAD);

 while (au_readl(SYS_COUNTER_CNTRL) & SYS_CNTRL_M21)
  ;
 au_writel(delta, SYS_RTCMATCH2);
 au_sync();

 return 0;
}
