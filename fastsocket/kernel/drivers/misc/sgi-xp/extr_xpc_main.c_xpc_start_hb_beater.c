
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* heartbeat_init ) () ;} ;
struct TYPE_4__ {int (* function ) (int ) ;} ;


 int init_timer (TYPE_1__*) ;
 int stub1 () ;
 TYPE_2__ xpc_arch_ops ;
 int xpc_hb_beater (int ) ;
 TYPE_1__ xpc_hb_timer ;

__attribute__((used)) static void
xpc_start_hb_beater(void)
{
 xpc_arch_ops.heartbeat_init();
 init_timer(&xpc_hb_timer);
 xpc_hb_timer.function = xpc_hb_beater;
 xpc_hb_beater(0);
}
