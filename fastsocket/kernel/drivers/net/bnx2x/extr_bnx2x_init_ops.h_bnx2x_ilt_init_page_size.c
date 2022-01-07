
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2x {int dummy; } ;


 int ILT_CLIENT_CDU ;
 int ILT_CLIENT_QM ;
 int ILT_CLIENT_SRC ;
 int ILT_CLIENT_TM ;
 int PXP2_REG_RQ_CDU_P_SIZE ;
 int PXP2_REG_RQ_QM_P_SIZE ;
 int PXP2_REG_RQ_SRC_P_SIZE ;
 int PXP2_REG_RQ_TM_P_SIZE ;
 int bnx2x_ilt_init_client_psz (struct bnx2x*,int ,int ,int ) ;

__attribute__((used)) static void bnx2x_ilt_init_page_size(struct bnx2x *bp, u8 initop)
{
 bnx2x_ilt_init_client_psz(bp, ILT_CLIENT_CDU,
      PXP2_REG_RQ_CDU_P_SIZE, initop);
 bnx2x_ilt_init_client_psz(bp, ILT_CLIENT_QM,
      PXP2_REG_RQ_QM_P_SIZE, initop);
 bnx2x_ilt_init_client_psz(bp, ILT_CLIENT_SRC,
      PXP2_REG_RQ_SRC_P_SIZE, initop);
 bnx2x_ilt_init_client_psz(bp, ILT_CLIENT_TM,
      PXP2_REG_RQ_TM_P_SIZE, initop);
}
