
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_raw_obj {int pstate; int state; } ;


 int test_bit (int ,int ) ;

__attribute__((used)) static bool bnx2x_raw_check_pending(struct bnx2x_raw_obj *o)
{
 return !!test_bit(o->state, o->pstate);
}
