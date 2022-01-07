
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {scalar_t__ mac_type; } ;
struct e1000_adapter {struct e1000_hw hw; } ;



 scalar_t__ e1000_82540 ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int e1000_update_itr(struct e1000_adapter *adapter,
         u16 itr_setting, int packets, int bytes)
{
 unsigned int retval = itr_setting;
 struct e1000_hw *hw = &adapter->hw;

 if (unlikely(hw->mac_type < e1000_82540))
  goto update_itr_done;

 if (packets == 0)
  goto update_itr_done;

 switch (itr_setting) {
 case 128:

  if (bytes/packets > 8000)
   retval = 130;
  else if ((packets < 5) && (bytes > 512))
   retval = 129;
  break;
 case 129:
  if (bytes > 10000) {

   if (bytes/packets > 8000)
    retval = 130;
   else if ((packets < 10) || ((bytes/packets) > 1200))
    retval = 130;
   else if ((packets > 35))
    retval = 128;
  } else if (bytes/packets > 2000)
   retval = 130;
  else if (packets <= 2 && bytes < 512)
   retval = 128;
  break;
 case 130:
  if (bytes > 25000) {
   if (packets > 35)
    retval = 129;
  } else if (bytes < 6000) {
   retval = 129;
  }
  break;
 }

update_itr_done:
 return retval;
}
