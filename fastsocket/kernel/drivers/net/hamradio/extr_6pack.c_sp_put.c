
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sixpack {int dead_sem; int refcnt; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int up (int *) ;

__attribute__((used)) static void sp_put(struct sixpack *sp)
{
 if (atomic_dec_and_test(&sp->refcnt))
  up(&sp->dead_sem);
}
