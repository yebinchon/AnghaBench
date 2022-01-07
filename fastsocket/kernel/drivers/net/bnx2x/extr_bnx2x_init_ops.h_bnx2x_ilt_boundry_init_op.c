
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ilt_client_info {int client_num; scalar_t__ end; scalar_t__ start; } ;
struct bnx2x {int dummy; } ;


 int BP_FUNC (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E1 (struct bnx2x*) ;




 scalar_t__ ILT_RANGE (scalar_t__,scalar_t__) ;
 scalar_t__ PXP2_REG_PSWRQ_CDU0_L2P ;
 scalar_t__ PXP2_REG_PSWRQ_QM0_L2P ;
 scalar_t__ PXP2_REG_PSWRQ_SRC0_L2P ;
 scalar_t__ PXP2_REG_PSWRQ_TM0_L2P ;
 scalar_t__ PXP2_REG_RQ_CDU_FIRST_ILT ;
 scalar_t__ PXP2_REG_RQ_CDU_LAST_ILT ;
 scalar_t__ PXP2_REG_RQ_QM_FIRST_ILT ;
 scalar_t__ PXP2_REG_RQ_QM_LAST_ILT ;
 scalar_t__ PXP2_REG_RQ_SRC_FIRST_ILT ;
 scalar_t__ PXP2_REG_RQ_SRC_LAST_ILT ;
 scalar_t__ PXP2_REG_RQ_TM_FIRST_ILT ;
 scalar_t__ PXP2_REG_RQ_TM_LAST_ILT ;
 int REG_WR (struct bnx2x*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void bnx2x_ilt_boundry_init_op(struct bnx2x *bp,
          struct ilt_client_info *ilt_cli,
          u32 ilt_start, u8 initop)
{
 u32 start_reg = 0;
 u32 end_reg = 0;





 if (CHIP_IS_E1(bp)) {
  switch (ilt_cli->client_num) {
  case 131:
   start_reg = PXP2_REG_PSWRQ_CDU0_L2P;
   break;
  case 130:
   start_reg = PXP2_REG_PSWRQ_QM0_L2P;
   break;
  case 129:
   start_reg = PXP2_REG_PSWRQ_SRC0_L2P;
   break;
  case 128:
   start_reg = PXP2_REG_PSWRQ_TM0_L2P;
   break;
  }
  REG_WR(bp, start_reg + BP_FUNC(bp)*4,
         ILT_RANGE((ilt_start + ilt_cli->start),
     (ilt_start + ilt_cli->end)));
 } else {
  switch (ilt_cli->client_num) {
  case 131:
   start_reg = PXP2_REG_RQ_CDU_FIRST_ILT;
   end_reg = PXP2_REG_RQ_CDU_LAST_ILT;
   break;
  case 130:
   start_reg = PXP2_REG_RQ_QM_FIRST_ILT;
   end_reg = PXP2_REG_RQ_QM_LAST_ILT;
   break;
  case 129:
   start_reg = PXP2_REG_RQ_SRC_FIRST_ILT;
   end_reg = PXP2_REG_RQ_SRC_LAST_ILT;
   break;
  case 128:
   start_reg = PXP2_REG_RQ_TM_FIRST_ILT;
   end_reg = PXP2_REG_RQ_TM_LAST_ILT;
   break;
  }
  REG_WR(bp, start_reg, (ilt_start + ilt_cli->start));
  REG_WR(bp, end_reg, (ilt_start + ilt_cli->end));
 }
}
