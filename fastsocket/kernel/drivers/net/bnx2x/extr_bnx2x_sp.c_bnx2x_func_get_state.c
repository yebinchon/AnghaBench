
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_func_sp_obj {int state; scalar_t__ pending; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_func_state { ____Placeholder_bnx2x_func_state } bnx2x_func_state ;


 int BNX2X_F_STATE_MAX ;
 int rmb () ;

enum bnx2x_func_state bnx2x_func_get_state(struct bnx2x *bp,
        struct bnx2x_func_sp_obj *o)
{

 if (o->pending)
  return BNX2X_F_STATE_MAX;




 rmb();

 return o->state;
}
