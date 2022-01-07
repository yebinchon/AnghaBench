
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_mregion {int list; int refcount; } ;


 int atomic_dec_and_test (int *) ;
 int call_rcu (int *,int ) ;
 int mr_rcu_callback ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void qib_put_mr(struct qib_mregion *mr)
{
 if (unlikely(atomic_dec_and_test(&mr->refcount)))
  call_rcu(&mr->list, mr_rcu_callback);
}
