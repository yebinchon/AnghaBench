
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bnx2x {int dummy; } ;
struct TYPE_2__ {int clp_mb; } ;


 int MF_CFG_RD (struct bnx2x*,int ) ;
 int MF_CFG_WR (struct bnx2x*,int ,int) ;
 int SHARED_MF_CLP_MAGIC ;
 TYPE_1__ shared_mf_config ;

__attribute__((used)) static void bnx2x_clp_reset_done(struct bnx2x *bp, u32 magic_val)
{

 u32 val = MF_CFG_RD(bp, shared_mf_config.clp_mb);
 MF_CFG_WR(bp, shared_mf_config.clp_mb,
  (val & (~SHARED_MF_CLP_MAGIC)) | magic_val);
}
