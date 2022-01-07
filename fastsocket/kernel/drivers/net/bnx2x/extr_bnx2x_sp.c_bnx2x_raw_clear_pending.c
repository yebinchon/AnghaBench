
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_raw_obj {int pstate; int state; } ;


 int clear_bit (int ,int ) ;
 int smp_mb__after_clear_bit () ;
 int smp_mb__before_clear_bit () ;

__attribute__((used)) static void bnx2x_raw_clear_pending(struct bnx2x_raw_obj *o)
{
 smp_mb__before_clear_bit();
 clear_bit(o->state, o->pstate);
 smp_mb__after_clear_bit();
}
