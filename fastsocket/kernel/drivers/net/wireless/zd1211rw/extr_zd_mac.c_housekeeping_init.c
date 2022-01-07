
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link_led_work; } ;
struct zd_mac {TYPE_1__ housekeeping; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int link_led_handler ;

__attribute__((used)) static void housekeeping_init(struct zd_mac *mac)
{
 INIT_DELAYED_WORK(&mac->housekeeping.link_led_work, link_led_handler);
}
