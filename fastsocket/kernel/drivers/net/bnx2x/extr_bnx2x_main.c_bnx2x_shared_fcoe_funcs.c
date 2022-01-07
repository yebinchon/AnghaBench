
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct bnx2x {int dummy; } ;
struct TYPE_6__ {int max_fcoe_conn; } ;
struct TYPE_5__ {int func_cfg; } ;
struct TYPE_4__ {int config; } ;


 int BP_PATH (struct bnx2x*) ;
 scalar_t__ CHIP_MODE_IS_4_PORT (struct bnx2x*) ;
 int E2_FUNC_MAX ;
 int FUNC_MF_CFG_FUNC_HIDE ;
 int FUNC_MF_CFG_PROTOCOL_FCOE ;
 int FUNC_MF_CFG_PROTOCOL_MASK ;
 int FW_ENCODE_32BIT_PATTERN ;
 scalar_t__ IS_MF (struct bnx2x*) ;
 scalar_t__ IS_MF_SD (struct bnx2x*) ;
 int MACP_FUNC_CFG_FLAGS_ENABLED ;
 int MACP_FUNC_CFG_FLAGS_FCOE_OFFLOAD ;
 int MF_CFG_RD (struct bnx2x*,int ) ;
 int SHMEM_RD (struct bnx2x*,int ) ;
 TYPE_3__* drv_lic_key ;
 TYPE_2__* func_ext_config ;
 TYPE_1__* func_mf_config ;

__attribute__((used)) static int bnx2x_shared_fcoe_funcs(struct bnx2x *bp)
{
 u8 count = 0;

 if (IS_MF(bp)) {
  u8 fid;


  for (fid = BP_PATH(bp); fid < E2_FUNC_MAX * 2; fid += 2) {
   if (IS_MF_SD(bp)) {
    u32 cfg = MF_CFG_RD(bp,
          func_mf_config[fid].config);

    if (!(cfg & FUNC_MF_CFG_FUNC_HIDE) &&
        ((cfg & FUNC_MF_CFG_PROTOCOL_MASK) ==
         FUNC_MF_CFG_PROTOCOL_FCOE))
     count++;
   } else {
    u32 cfg = MF_CFG_RD(bp,
          func_ext_config[fid].
              func_cfg);

    if ((cfg & MACP_FUNC_CFG_FLAGS_ENABLED) &&
        (cfg & MACP_FUNC_CFG_FLAGS_FCOE_OFFLOAD))
     count++;
   }
  }
 } else {
  int port, port_cnt = CHIP_MODE_IS_4_PORT(bp) ? 2 : 1;

  for (port = 0; port < port_cnt; port++) {
   u32 lic = SHMEM_RD(bp,
        drv_lic_key[port].max_fcoe_conn) ^
      FW_ENCODE_32BIT_PATTERN;
   if (lic)
    count++;
  }
 }

 return count;
}
