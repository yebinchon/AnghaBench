
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_credit_pool_obj {int credit; } ;


 int atomic_read (int *) ;
 int smp_mb () ;

__attribute__((used)) static int bnx2x_credit_pool_check(struct bnx2x_credit_pool_obj *o)
{
 int cur_credit;

 smp_mb();
 cur_credit = atomic_read(&o->credit);

 return cur_credit;
}
