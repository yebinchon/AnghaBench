
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long data; scalar_t__ expires; int function; } ;
struct zfcp_erp_action {TYPE_1__ timer; } ;


 scalar_t__ HZ ;
 int add_timer (TYPE_1__*) ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int zfcp_erp_memwait_handler ;

__attribute__((used)) static void zfcp_erp_strategy_memwait(struct zfcp_erp_action *erp_action)
{
 init_timer(&erp_action->timer);
 erp_action->timer.function = zfcp_erp_memwait_handler;
 erp_action->timer.data = (unsigned long) erp_action;
 erp_action->timer.expires = jiffies + HZ;
 add_timer(&erp_action->timer);
}
