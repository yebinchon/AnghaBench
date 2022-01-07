
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ser; } ;
struct cardstate {TYPE_2__ hw; } ;
struct TYPE_3__ {int dead_cmp; int refcnt; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;

__attribute__((used)) static void cs_put(struct cardstate *cs)
{
 if (atomic_dec_and_test(&cs->hw.ser->refcnt))
  complete(&cs->hw.ser->dead_cmp);
}
