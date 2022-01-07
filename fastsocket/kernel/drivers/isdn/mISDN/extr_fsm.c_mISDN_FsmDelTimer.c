
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct FsmTimer {int tl; TYPE_1__* fi; } ;
struct TYPE_2__ {int (* printdebug ) (TYPE_1__*,char*,long,int) ;scalar_t__ debug; } ;


 int del_timer (int *) ;
 int stub1 (TYPE_1__*,char*,long,int) ;

void
mISDN_FsmDelTimer(struct FsmTimer *ft, int where)
{





 del_timer(&ft->tl);
}
