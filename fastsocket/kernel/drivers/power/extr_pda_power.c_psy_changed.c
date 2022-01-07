
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wait_for_charger; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 TYPE_1__* pdata ;
 int supply_timer ;
 int update_charger () ;

__attribute__((used)) static void psy_changed(void)
{
 update_charger();





 mod_timer(&supply_timer,
    jiffies + msecs_to_jiffies(pdata->wait_for_charger));
}
