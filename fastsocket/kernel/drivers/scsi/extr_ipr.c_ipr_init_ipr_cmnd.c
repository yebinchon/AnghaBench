
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ scratch; } ;
struct ipr_cmnd {void (* fast_done ) (struct ipr_cmnd*) ;int timer; int * sibling; TYPE_1__ u; } ;


 int init_timer (int *) ;
 int ipr_reinit_ipr_cmnd (struct ipr_cmnd*) ;

__attribute__((used)) static void ipr_init_ipr_cmnd(struct ipr_cmnd *ipr_cmd,
         void (*fast_done) (struct ipr_cmnd *))
{
 ipr_reinit_ipr_cmnd(ipr_cmd);
 ipr_cmd->u.scratch = 0;
 ipr_cmd->sibling = ((void*)0);
 ipr_cmd->fast_done = fast_done;
 init_timer(&ipr_cmd->timer);
}
