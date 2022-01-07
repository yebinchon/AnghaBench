
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asyncppp {int dead_sem; int refcnt; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int up (int *) ;

__attribute__((used)) static void ap_put(struct asyncppp *ap)
{
 if (atomic_dec_and_test(&ap->refcnt))
  up(&ap->dead_sem);
}
