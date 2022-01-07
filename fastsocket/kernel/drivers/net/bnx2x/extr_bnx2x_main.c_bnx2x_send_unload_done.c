
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BP_NOMCP (struct bnx2x*) ;
 int DRV_MSG_CODE_UNLOAD_DONE ;
 int DRV_MSG_CODE_UNLOAD_SKIP_LINK_RESET ;
 int bnx2x_fw_command (struct bnx2x*,int ,int ) ;

void bnx2x_send_unload_done(struct bnx2x *bp, bool keep_link)
{
 u32 reset_param = keep_link ? DRV_MSG_CODE_UNLOAD_SKIP_LINK_RESET : 0;


 if (!BP_NOMCP(bp))
  bnx2x_fw_command(bp, DRV_MSG_CODE_UNLOAD_DONE, reset_param);
}
