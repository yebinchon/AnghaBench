
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwch_ep_common {int state; } ;
typedef enum iwch_ep_state { ____Placeholder_iwch_ep_state } iwch_ep_state ;



__attribute__((used)) static void __state_set(struct iwch_ep_common *epc, enum iwch_ep_state new)
{
 epc->state = new;
}
