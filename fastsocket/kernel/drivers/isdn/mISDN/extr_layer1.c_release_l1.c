
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct layer1 {TYPE_1__* dch; int timer; } ;
struct TYPE_2__ {int * l1; } ;


 int THIS_MODULE ;
 int kfree (struct layer1*) ;
 int mISDN_FsmDelTimer (int *,int ) ;
 int module_put (int ) ;

__attribute__((used)) static void
release_l1(struct layer1 *l1) {
 mISDN_FsmDelTimer(&l1->timer, 0);
 if (l1->dch)
  l1->dch->l1 = ((void*)0);
 module_put(THIS_MODULE);
 kfree(l1);
}
