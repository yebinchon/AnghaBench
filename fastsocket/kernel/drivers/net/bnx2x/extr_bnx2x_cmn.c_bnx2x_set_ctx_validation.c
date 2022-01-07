
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {void* cdu_reserved; } ;
struct TYPE_3__ {void* cdu_usage; } ;
struct eth_context {TYPE_2__ xstorm_ag_context; TYPE_1__ ustorm_ag_context; } ;
struct bnx2x {int dummy; } ;


 int CDU_REGION_NUMBER_UCM_AG ;
 int CDU_REGION_NUMBER_XCM_AG ;
 void* CDU_RSRVD_VALUE_TYPE_A (int ,int ,int ) ;
 int ETH_CONNECTION_TYPE ;
 int HW_CID (struct bnx2x*,int ) ;

void bnx2x_set_ctx_validation(struct bnx2x *bp, struct eth_context *cxt,
         u32 cid)
{

 cxt->ustorm_ag_context.cdu_usage =
  CDU_RSRVD_VALUE_TYPE_A(HW_CID(bp, cid),
   CDU_REGION_NUMBER_UCM_AG, ETH_CONNECTION_TYPE);

 cxt->xstorm_ag_context.cdu_reserved =
  CDU_RSRVD_VALUE_TYPE_A(HW_CID(bp, cid),
   CDU_REGION_NUMBER_XCM_AG, ETH_CONNECTION_TYPE);
}
