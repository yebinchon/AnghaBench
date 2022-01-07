
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int HUB_S (int *,int) ;
 scalar_t__ LOCAL_MMR_ADDR (int ) ;
 int SH_EVENT_OCCURRED_ALIAS ;
 int SH_EVENT_OCCURRED_RTC1_INT_MASK ;

__attribute__((used)) static void mmtimer_clr_int_pending(int comparator)
{
 HUB_S((u64 *)LOCAL_MMR_ADDR(SH_EVENT_OCCURRED_ALIAS),
  SH_EVENT_OCCURRED_RTC1_INT_MASK << comparator);
}
