
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* bas; } ;
struct cardstate {TYPE_1__ hw; } ;
struct TYPE_4__ {struct TYPE_4__* int_in_buf; } ;


 int kfree (TYPE_2__*) ;

__attribute__((used)) static void gigaset_freecshw(struct cardstate *cs)
{

 kfree(cs->hw.bas->int_in_buf);
 kfree(cs->hw.bas);
 cs->hw.bas = ((void*)0);
}
