
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x_rx_mode_ramrod_params {TYPE_1__* rx_mode_obj; int ramrod_flags; } ;
struct bnx2x {int dummy; } ;
struct TYPE_2__ {int (* config_rx_mode ) (struct bnx2x*,struct bnx2x_rx_mode_ramrod_params*) ;int (* wait_comp ) (struct bnx2x*,struct bnx2x_rx_mode_ramrod_params*) ;} ;


 int RAMROD_COMP_WAIT ;
 int stub1 (struct bnx2x*,struct bnx2x_rx_mode_ramrod_params*) ;
 int stub2 (struct bnx2x*,struct bnx2x_rx_mode_ramrod_params*) ;
 scalar_t__ test_bit (int ,int *) ;

int bnx2x_config_rx_mode(struct bnx2x *bp,
    struct bnx2x_rx_mode_ramrod_params *p)
{
 int rc;


 rc = p->rx_mode_obj->config_rx_mode(bp, p);
 if (rc < 0)
  return rc;


 if (test_bit(RAMROD_COMP_WAIT, &p->ramrod_flags)) {
  rc = p->rx_mode_obj->wait_comp(bp, p);
  if (rc)
   return rc;
 }

 return rc;
}
