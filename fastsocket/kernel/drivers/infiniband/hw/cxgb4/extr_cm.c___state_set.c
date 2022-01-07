
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_ep_common {int state; } ;
typedef enum c4iw_ep_state { ____Placeholder_c4iw_ep_state } c4iw_ep_state ;



__attribute__((used)) static void __state_set(struct c4iw_ep_common *epc, enum c4iw_ep_state new)
{
 epc->state = new;
}
