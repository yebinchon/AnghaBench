
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct tstorm_eth_function_common_config {int dummy; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ BAR_TSTRORM_INTMEM ;
 scalar_t__ TSTORM_FUNCTION_COMMON_CONFIG_OFFSET (int ) ;
 int __storm_memset_struct (struct bnx2x*,scalar_t__,size_t,scalar_t__*) ;

__attribute__((used)) static void storm_memset_func_cfg(struct bnx2x *bp,
     struct tstorm_eth_function_common_config *tcfg,
     u16 abs_fid)
{
 size_t size = sizeof(struct tstorm_eth_function_common_config);

 u32 addr = BAR_TSTRORM_INTMEM +
   TSTORM_FUNCTION_COMMON_CONFIG_OFFSET(abs_fid);

 __storm_memset_struct(bp, addr, size, (u32 *)tcfg);
}
