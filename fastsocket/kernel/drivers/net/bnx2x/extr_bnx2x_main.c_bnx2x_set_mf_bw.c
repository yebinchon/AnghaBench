
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int DRV_MSG_CODE_SET_MF_BW_ACK ;
 int bnx2x_config_mf_bw (struct bnx2x*) ;
 int bnx2x_fw_command (struct bnx2x*,int ,int ) ;

__attribute__((used)) static void bnx2x_set_mf_bw(struct bnx2x *bp)
{
 bnx2x_config_mf_bw(bp);
 bnx2x_fw_command(bp, DRV_MSG_CODE_SET_MF_BW_ACK, 0);
}
