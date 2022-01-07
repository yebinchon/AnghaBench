
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ shmem_base; } ;
struct bnx2x {TYPE_1__ common; } ;


 int BNX2X_ERR (char*) ;
 size_t BP_PORT (struct bnx2x*) ;
 int ENODEV ;
 int MCP_ONE_TIMEOUT ;
 int MCP_TIMEOUT ;
 int MISC_REG_SHARED_MEM_ADDR ;
 scalar_t__ REG_RD (struct bnx2x*,int ) ;
 int SHMEM_RD (struct bnx2x*,int ) ;
 int SHR_MEM_VALIDITY_MB ;
 int bnx2x_mcp_wait_one (struct bnx2x*) ;
 int * validity_map ;

__attribute__((used)) static int bnx2x_init_shmem(struct bnx2x *bp)
{
 int cnt = 0;
 u32 val = 0;

 do {
  bp->common.shmem_base = REG_RD(bp, MISC_REG_SHARED_MEM_ADDR);
  if (bp->common.shmem_base) {
   val = SHMEM_RD(bp, validity_map[BP_PORT(bp)]);
   if (val & SHR_MEM_VALIDITY_MB)
    return 0;
  }

  bnx2x_mcp_wait_one(bp);

 } while (cnt++ < (MCP_TIMEOUT / MCP_ONE_TIMEOUT));

 BNX2X_ERR("BAD MCP validity signature\n");

 return -ENODEV;
}
