
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int squeue; int l3m_timer; int * global; scalar_t__ proc; } ;
struct PStack {TYPE_1__ l3; } ;


 int FsmDelTimer (int *,int) ;
 int StopAllL3Timer (int *) ;
 int kfree (int *) ;
 int release_l3_process (scalar_t__) ;
 int skb_queue_purge (int *) ;

void
releasestack_isdnl3(struct PStack *st)
{
 while (st->l3.proc)
  release_l3_process(st->l3.proc);
 if (st->l3.global) {
  StopAllL3Timer(st->l3.global);
  kfree(st->l3.global);
  st->l3.global = ((void*)0);
 }
 FsmDelTimer(&st->l3.l3m_timer, 54);
 skb_queue_purge(&st->l3.squeue);
}
