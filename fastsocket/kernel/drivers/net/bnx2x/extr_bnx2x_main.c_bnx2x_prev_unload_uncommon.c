
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int BNX2X_DEV_INFO (char*) ;
 int BNX2X_PREV_WAIT_NEEDED ;
 int FW_MSG_CODE_DRV_LOAD_FUNCTION ;
 int bnx2x_do_flr (struct bnx2x*) ;
 int bnx2x_nic_load_analyze_req (struct bnx2x*,int ) ;
 scalar_t__ bnx2x_prev_is_path_marked (struct bnx2x*) ;
 int bnx2x_prev_mcp_done (struct bnx2x*) ;

__attribute__((used)) static int bnx2x_prev_unload_uncommon(struct bnx2x *bp)
{
 int rc;

 BNX2X_DEV_INFO("Uncommon unload Flow\n");


 if (bnx2x_prev_is_path_marked(bp))
  return bnx2x_prev_mcp_done(bp);

 BNX2X_DEV_INFO("Path is unmarked\n");





 rc = bnx2x_nic_load_analyze_req(bp, FW_MSG_CODE_DRV_LOAD_FUNCTION);

 if (!rc) {

  BNX2X_DEV_INFO("FW version matches our own. Attempting FLR\n");
  rc = bnx2x_do_flr(bp);
 }

 if (!rc) {

  BNX2X_DEV_INFO("FLR successful\n");
  return 0;
 }

 BNX2X_DEV_INFO("Could not FLR\n");


 rc = bnx2x_prev_mcp_done(bp);
 if (!rc)
  rc = BNX2X_PREV_WAIT_NEEDED;

 return rc;
}
