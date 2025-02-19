
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u8 ;
struct bnx2x_ets_params {size_t num_of_cos; TYPE_5__* cos; int member_0; } ;
struct bnx2x_dcbx_pg_params {size_t num_of_cos; TYPE_6__* cos_params; } ;
struct TYPE_7__ {struct bnx2x_dcbx_pg_params ets; } ;
struct bnx2x {int link_vars; int link_params; TYPE_1__ dcbx_port_params; } ;
struct TYPE_12__ {scalar_t__ strict; scalar_t__ bw_tbl; } ;
struct TYPE_9__ {size_t bw; } ;
struct TYPE_8__ {scalar_t__ pri; } ;
struct TYPE_10__ {TYPE_3__ bw_params; TYPE_2__ sp_params; } ;
struct TYPE_11__ {TYPE_4__ params; int state; } ;


 scalar_t__ BNX2X_DCBX_STRICT_INVALID ;
 int BNX2X_ERR (char*) ;
 scalar_t__ DCBX_INVALID_COS_BW ;
 int bnx2x_cos_state_bw ;
 int bnx2x_cos_state_strict ;
 int bnx2x_ets_disabled (int *,int *) ;
 scalar_t__ bnx2x_ets_e3b0_config (int *,int *,struct bnx2x_ets_params*) ;

__attribute__((used)) static void bnx2x_dcbx_update_ets_config(struct bnx2x *bp)
{
 struct bnx2x_dcbx_pg_params *ets = &(bp->dcbx_port_params.ets);
 struct bnx2x_ets_params ets_params = { 0 };
 u8 i;

 ets_params.num_of_cos = ets->num_of_cos;

 for (i = 0; i < ets->num_of_cos; i++) {

  if (ets->cos_params[i].strict != BNX2X_DCBX_STRICT_INVALID) {
   if (ets->cos_params[i].bw_tbl != DCBX_INVALID_COS_BW) {
    BNX2X_ERR("COS can't be not BW and not SP\n");
    return;
   }

   ets_params.cos[i].state = bnx2x_cos_state_strict;
   ets_params.cos[i].params.sp_params.pri =
      ets->cos_params[i].strict;
  } else {
   if (ets->cos_params[i].bw_tbl == DCBX_INVALID_COS_BW) {
    BNX2X_ERR("COS can't be not BW and not SP\n");
    return;
   }
   ets_params.cos[i].state = bnx2x_cos_state_bw;
   ets_params.cos[i].params.bw_params.bw =
      (u8)ets->cos_params[i].bw_tbl;
  }
 }


 if (bnx2x_ets_e3b0_config(&bp->link_params, &bp->link_vars,
      &ets_params)) {
  BNX2X_ERR("bnx2x_ets_e3b0_config failed\n");
  bnx2x_ets_disabled(&bp->link_params, &bp->link_vars);
 }
}
