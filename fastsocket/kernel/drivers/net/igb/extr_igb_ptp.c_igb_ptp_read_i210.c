
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct timespec {void* tv_nsec; void* tv_sec; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {struct e1000_hw hw; } ;


 int E1000_SYSTIMH ;
 int E1000_SYSTIML ;
 int E1000_SYSTIMR ;
 void* rd32 (int ) ;

__attribute__((used)) static void igb_ptp_read_i210(struct igb_adapter *adapter, struct timespec *ts)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 sec, nsec;





 rd32(E1000_SYSTIMR);
 nsec = rd32(E1000_SYSTIML);
 sec = rd32(E1000_SYSTIMH);

 ts->tv_sec = sec;
 ts->tv_nsec = nsec;
}
