
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*) ;
 int DRV_MSG_CODE_UNLOAD_DONE ;
 int DRV_MSG_CODE_UNLOAD_SKIP_LINK_RESET ;
 int EBUSY ;
 int bnx2x_fw_command (struct bnx2x*,int ,int ) ;

__attribute__((used)) static int bnx2x_prev_mcp_done(struct bnx2x *bp)
{
 u32 rc = bnx2x_fw_command(bp, DRV_MSG_CODE_UNLOAD_DONE,
      DRV_MSG_CODE_UNLOAD_SKIP_LINK_RESET);
 if (!rc) {
  BNX2X_ERR("MCP response failure, aborting\n");
  return -EBUSY;
 }

 return 0;
}
