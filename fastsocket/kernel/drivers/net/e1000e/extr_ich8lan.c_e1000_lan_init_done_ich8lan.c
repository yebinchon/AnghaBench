
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct e1000_hw {int dummy; } ;


 scalar_t__ E1000_ICH8_LAN_INIT_TIMEOUT ;
 scalar_t__ E1000_STATUS_LAN_INIT_DONE ;
 int STATUS ;
 int e_dbg (char*) ;
 scalar_t__ er32 (int ) ;
 int ew32 (int ,scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void e1000_lan_init_done_ich8lan(struct e1000_hw *hw)
{
 u32 data, loop = E1000_ICH8_LAN_INIT_TIMEOUT;


 do {
  data = er32(STATUS);
  data &= E1000_STATUS_LAN_INIT_DONE;
  usleep_range(100, 200);
 } while ((!data) && --loop);





 if (loop == 0)
  e_dbg("LAN_INIT_DONE not set, increase timeout\n");


 data = er32(STATUS);
 data &= ~E1000_STATUS_LAN_INIT_DONE;
 ew32(STATUS, data);
}
