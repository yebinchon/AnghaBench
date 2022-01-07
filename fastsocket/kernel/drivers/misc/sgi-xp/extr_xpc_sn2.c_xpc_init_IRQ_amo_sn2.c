
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amo {int dummy; } ;
struct TYPE_2__ {struct amo* amos_page; } ;


 int xpc_receive_IRQ_amo_sn2 (struct amo*) ;
 TYPE_1__* xpc_vars_sn2 ;

__attribute__((used)) static struct amo *
xpc_init_IRQ_amo_sn2(int index)
{
 struct amo *amo = xpc_vars_sn2->amos_page + index;

 (void)xpc_receive_IRQ_amo_sn2(amo);
 return amo;
}
