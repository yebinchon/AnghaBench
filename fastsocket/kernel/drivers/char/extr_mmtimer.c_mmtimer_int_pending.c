
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HUB_L (unsigned long*) ;
 scalar_t__ LOCAL_MMR_ADDR (int ) ;
 int SH_EVENT_OCCURRED ;
 int SH_EVENT_OCCURRED_RTC1_INT_MASK ;

__attribute__((used)) static int mmtimer_int_pending(int comparator)
{
 if (HUB_L((unsigned long *)LOCAL_MMR_ADDR(SH_EVENT_OCCURRED)) &
   SH_EVENT_OCCURRED_RTC1_INT_MASK << comparator)
  return 1;
 else
  return 0;
}
