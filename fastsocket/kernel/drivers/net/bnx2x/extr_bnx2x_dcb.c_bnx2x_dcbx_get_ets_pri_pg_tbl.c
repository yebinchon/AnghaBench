
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_DCB ;
 int DCBX_MAX_NUM_PRI_PG_ENTRIES ;
 int DCBX_PRI_PG_GET (int *,int) ;
 int DP (int ,char*,int,int ) ;

__attribute__((used)) static void bnx2x_dcbx_get_ets_pri_pg_tbl(struct bnx2x *bp,
    u32 *set_configuration_ets_pg,
    u32 *pri_pg_tbl)
{
 int i;

 for (i = 0; i < DCBX_MAX_NUM_PRI_PG_ENTRIES; i++) {
  set_configuration_ets_pg[i] = DCBX_PRI_PG_GET(pri_pg_tbl, i);

  DP(BNX2X_MSG_DCB, "set_configuration_ets_pg[%d] = 0x%x\n",
     i, set_configuration_ets_pg[i]);
 }
}
