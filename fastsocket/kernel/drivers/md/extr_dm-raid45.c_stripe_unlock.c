
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe {int * lock; int sc; } ;
struct TYPE_4__ {TYPE_1__* locking; } ;
struct TYPE_3__ {int (* unlock ) (int *) ;} ;


 TYPE_2__* RS (int ) ;
 int stub1 (int *) ;

__attribute__((used)) static void stripe_unlock(struct stripe *stripe)
{
 RS(stripe->sc)->locking->unlock(stripe->lock);
 stripe->lock = ((void*)0);
}
