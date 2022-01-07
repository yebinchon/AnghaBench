
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; TYPE_2__* prev; } ;
typedef TYPE_3__ wavepoint_history ;
struct TYPE_6__ {int num_wavepoints; TYPE_3__* head; } ;
struct net_local {TYPE_1__ wavepoint_table; TYPE_3__* curr_point; } ;
struct TYPE_7__ {TYPE_3__* next; } ;


 int kfree (TYPE_3__*) ;

__attribute__((used)) static void wl_del_wavepoint(wavepoint_history *wavepoint, struct net_local *lp)
{
  if(wavepoint==((void*)0))
    return;

  if(lp->curr_point==wavepoint)
    lp->curr_point=((void*)0);

  if(wavepoint->prev!=((void*)0))
    wavepoint->prev->next=wavepoint->next;

  if(wavepoint->next!=((void*)0))
    wavepoint->next->prev=wavepoint->prev;

  if(lp->wavepoint_table.head==wavepoint)
    lp->wavepoint_table.head=wavepoint->next;

  lp->wavepoint_table.num_wavepoints--;
  kfree(wavepoint);
}
