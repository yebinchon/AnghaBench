
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {int tabcid; int tabnocid; } ;
struct bc_state {int dummy; } ;
struct at_state_t {int* int_var; int cid; int replystruct; struct bc_state* bcs; struct cardstate* cs; int ** str_var; scalar_t__ ConState; scalar_t__ seq_index; scalar_t__ timer_index; scalar_t__ timer_active; scalar_t__ timer_expires; scalar_t__ pending_commands; scalar_t__ getstring; scalar_t__ waiting; int list; } ;


 int INIT_LIST_HEAD (int *) ;
 int STR_NUM ;
 size_t VAR_ZCTP ;
 size_t VAR_ZDLE ;
 size_t VAR_ZSAU ;
 int ZSAU_NULL ;

void gigaset_at_init(struct at_state_t *at_state, struct bc_state *bcs,
       struct cardstate *cs, int cid)
{
 int i;

 INIT_LIST_HEAD(&at_state->list);
 at_state->waiting = 0;
 at_state->getstring = 0;
 at_state->pending_commands = 0;
 at_state->timer_expires = 0;
 at_state->timer_active = 0;
 at_state->timer_index = 0;
 at_state->seq_index = 0;
 at_state->ConState = 0;
 for (i = 0; i < STR_NUM; ++i)
  at_state->str_var[i] = ((void*)0);
 at_state->int_var[VAR_ZDLE] = 0;
 at_state->int_var[VAR_ZCTP] = -1;
 at_state->int_var[VAR_ZSAU] = ZSAU_NULL;
 at_state->cs = cs;
 at_state->bcs = bcs;
 at_state->cid = cid;
 if (!cid)
  at_state->replystruct = cs->tabnocid;
 else
  at_state->replystruct = cs->tabcid;
}
