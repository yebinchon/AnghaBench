
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; int flags; } ;
struct rtl8169_private {TYPE_1__ wk; } ;
typedef enum rtl_flag { ____Placeholder_rtl_flag } rtl_flag ;


 int schedule_work (int *) ;
 int test_and_set_bit (int,int ) ;

__attribute__((used)) static void rtl_schedule_task(struct rtl8169_private *tp, enum rtl_flag flag)
{
 if (!test_and_set_bit(flag, tp->wk.flags))
  schedule_work(&tp->wk.work);
}
