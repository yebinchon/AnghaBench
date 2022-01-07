
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeh_early_enable_info {int buid_lo; int buid_hi; } ;


 scalar_t__ RTAS_UNKNOWN_SERVICE ;
 scalar_t__ ibm_get_config_addr_info ;
 scalar_t__ ibm_get_config_addr_info2 ;
 int rtas_call (scalar_t__,int,int,unsigned int*,int,int ,int ,int) ;

__attribute__((used)) static int get_pe_addr (int config_addr,
                        struct eeh_early_enable_info *info)
{
 unsigned int rets[3];
 int ret;


 if (ibm_get_config_addr_info2 != RTAS_UNKNOWN_SERVICE) {

  ret = rtas_call (ibm_get_config_addr_info2, 4, 2, rets,
   config_addr, info->buid_hi, info->buid_lo, 1);
  if (ret || (rets[0]==0))
   return 0;

  ret = rtas_call (ibm_get_config_addr_info2, 4, 2, rets,
   config_addr, info->buid_hi, info->buid_lo, 0);
  if (ret)
   return 0;
  return rets[0];
 }


 if (ibm_get_config_addr_info != RTAS_UNKNOWN_SERVICE) {
  ret = rtas_call (ibm_get_config_addr_info, 4, 2, rets,
   config_addr, info->buid_hi, info->buid_lo, 0);
  if (ret)
   return 0;
  return rets[0];
 }
 return 0;
}
