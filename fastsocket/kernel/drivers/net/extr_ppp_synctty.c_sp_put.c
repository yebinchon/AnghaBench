
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syncppp {int dead_cmp; int refcnt; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;

__attribute__((used)) static void sp_put(struct syncppp *ap)
{
 if (atomic_dec_and_test(&ap->refcnt))
  complete(&ap->dead_cmp);
}
