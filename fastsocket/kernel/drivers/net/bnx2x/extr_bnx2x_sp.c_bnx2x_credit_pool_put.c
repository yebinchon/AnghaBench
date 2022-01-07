
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_credit_pool_obj {scalar_t__ pool_sz; int credit; } ;


 int __atomic_add_ifless (int *,int,scalar_t__) ;
 int smp_mb () ;

__attribute__((used)) static bool bnx2x_credit_pool_put(struct bnx2x_credit_pool_obj *o, int cnt)
{
 bool rc;

 smp_mb();


 rc = __atomic_add_ifless(&o->credit, cnt, o->pool_sz + 1);

 smp_mb();

 return rc;
}
