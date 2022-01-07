
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int flags; int timer_event_accumulator; int service_timer; int num_vfs; } ;


 int HZ ;
 int IXGBE_FLAG_NEED_LINK_UPDATE ;
 int ixgbe_check_for_bad_vf (struct ixgbe_adapter*) ;
 int ixgbe_service_event_schedule (struct ixgbe_adapter*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void ixgbe_service_timer(unsigned long data)
{
 struct ixgbe_adapter *adapter = (struct ixgbe_adapter *)data;
 unsigned long next_event_offset;
 bool ready = 1;


 if (adapter->flags & IXGBE_FLAG_NEED_LINK_UPDATE)
  next_event_offset = HZ / 10;
 else
  next_event_offset = HZ * 2;
 mod_timer(&adapter->service_timer, next_event_offset + jiffies);

 if (ready)
  ixgbe_service_event_schedule(adapter);
}
