
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_13__ {scalar_t__ invoke_id; int proc; int ll_id; } ;
struct TYPE_14__ {TYPE_4__ ni1; } ;
struct l3_process {TYPE_5__ prot; TYPE_9__* st; int timer; } ;
struct PStack {int dummy; } ;
struct TYPE_15__ {int (* statcallb ) (TYPE_7__*) ;} ;
struct IsdnCardState {TYPE_6__ iif; int myid; } ;
struct TYPE_11__ {int * data; int datalen; scalar_t__ timeout; int proc; int ll_id; scalar_t__ hl_id; } ;
struct TYPE_12__ {TYPE_2__ ni1_io; } ;
struct TYPE_16__ {TYPE_3__ parm; int arg; int command; int driver; } ;
typedef TYPE_7__ isdn_ctrl ;
struct TYPE_10__ {struct IsdnCardState* hardware; } ;
struct TYPE_17__ {TYPE_1__ l1; } ;


 int ISDN_STAT_PROT ;
 int L3DelTimer (int *) ;
 int NI1_STAT_INVOKE_RES ;
 int free_invoke_id (TYPE_9__*,scalar_t__) ;
 int l3_debug (struct PStack*,char*,int,int ) ;
 struct l3_process* l3ni1_search_dummy_proc (struct PStack*,int) ;
 int ni1_release_l3_process (struct l3_process*) ;
 int stub1 (TYPE_7__*) ;

__attribute__((used)) static void
l3ni1_dummy_return_result(struct PStack *st, int id, u_char *p, u_char nlen)
{ isdn_ctrl ic;
  struct IsdnCardState *cs;
  struct l3_process *pc = ((void*)0);

  if ((pc = l3ni1_search_dummy_proc(st, id)))
   { L3DelTimer(&pc->timer);

     cs = pc->st->l1.hardware;
     ic.driver = cs->myid;
     ic.command = ISDN_STAT_PROT;
     ic.arg = NI1_STAT_INVOKE_RES;
     ic.parm.ni1_io.hl_id = pc->prot.ni1.invoke_id;
     ic.parm.ni1_io.ll_id = pc->prot.ni1.ll_id;
     ic.parm.ni1_io.proc = pc->prot.ni1.proc;
     ic.parm.ni1_io.timeout= 0;
     ic.parm.ni1_io.datalen = nlen;
     ic.parm.ni1_io.data = p;
     free_invoke_id(pc->st, pc->prot.ni1.invoke_id);
     pc->prot.ni1.invoke_id = 0;

     cs->iif.statcallb(&ic);
     ni1_release_l3_process(pc);
   }
  else
   l3_debug(st, "dummy return result id=0x%x result len=%d",id,nlen);
}
