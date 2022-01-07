
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mkiss {int dead_sem; int refcnt; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int up (int *) ;

__attribute__((used)) static void mkiss_put(struct mkiss *ax)
{
 if (atomic_dec_and_test(&ax->refcnt))
  up(&ax->dead_sem);
}
