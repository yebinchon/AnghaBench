
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; int (* callback ) () ;} ;


 TYPE_1__* button_callback_list ;
 int stub1 () ;

__attribute__((used)) static void button_consume_callbacks (int bpcount)
{
 int lp = 0;
 for (; lp <= 31; lp++) {
  if ((button_callback_list [lp].count) == bpcount) {
   if (button_callback_list [lp].callback) {
    button_callback_list[lp].callback();
   }
  }
 }
}
