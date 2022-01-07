
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_credit_pool_obj {int dummy; } ;



__attribute__((used)) static bool bnx2x_credit_pool_put_entry_always_true(
 struct bnx2x_credit_pool_obj *o,
 int offset)
{
 return 1;
}
