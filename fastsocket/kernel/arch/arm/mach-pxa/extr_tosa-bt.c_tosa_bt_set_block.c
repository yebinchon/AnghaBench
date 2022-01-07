
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_info (char*,...) ;
 int tosa_bt_off (void*) ;
 int tosa_bt_on (void*) ;

__attribute__((used)) static int tosa_bt_set_block(void *data, bool blocked)
{
 pr_info("BT_RADIO going: %s\n", blocked ? "off" : "on");

 if (!blocked) {
  pr_info("TOSA_BT: going ON\n");
  tosa_bt_on(data);
 } else {
  pr_info("TOSA_BT: going OFF\n");
  tosa_bt_off(data);
 }

 return 0;
}
