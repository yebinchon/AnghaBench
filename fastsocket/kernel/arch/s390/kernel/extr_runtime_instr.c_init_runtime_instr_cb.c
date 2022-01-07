
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct runtime_instr_cb {int buf_limit; int home_space; int int_requested; int pstate; int pstate_set_buf; int pstate_sample; int pstate_collect; int valid; int key; } ;


 scalar_t__ HOME_SPACE_MODE ;
 int PAGE_DEFAULT_KEY ;
 scalar_t__ user_mode ;

__attribute__((used)) static void init_runtime_instr_cb(struct runtime_instr_cb *cb)
{
 cb->buf_limit = 0xfff;
 if (user_mode == HOME_SPACE_MODE)
  cb->home_space = 1;
 cb->int_requested = 1;
 cb->pstate = 1;
 cb->pstate_set_buf = 1;
 cb->pstate_sample = 1;
 cb->pstate_collect = 1;
 cb->key = PAGE_DEFAULT_KEY;
 cb->valid = 1;
}
