
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EFAULT ;
 int HUB_S (int *,unsigned long) ;
 scalar_t__ LOCAL_MMR_ADDR (int ) ;
 int REMOTE_HUB_S (long,int ,unsigned long) ;
 int SH_RTC1_INT_ENABLE ;
 int SH_RTC2_INT_ENABLE ;
 int SH_RTC3_INT_ENABLE ;

__attribute__((used)) static int mmtimer_disable_int(long nasid, int comparator)
{
 switch (comparator) {
 case 0:
  nasid == -1 ? HUB_S((u64 *)LOCAL_MMR_ADDR(SH_RTC1_INT_ENABLE),
   0UL) : REMOTE_HUB_S(nasid, SH_RTC1_INT_ENABLE, 0UL);
  break;
 case 1:
  nasid == -1 ? HUB_S((u64 *)LOCAL_MMR_ADDR(SH_RTC2_INT_ENABLE),
   0UL) : REMOTE_HUB_S(nasid, SH_RTC2_INT_ENABLE, 0UL);
  break;
 case 2:
  nasid == -1 ? HUB_S((u64 *)LOCAL_MMR_ADDR(SH_RTC3_INT_ENABLE),
   0UL) : REMOTE_HUB_S(nasid, SH_RTC3_INT_ENABLE, 0UL);
  break;
 default:
  return -EFAULT;
 }
 return 0;
}
