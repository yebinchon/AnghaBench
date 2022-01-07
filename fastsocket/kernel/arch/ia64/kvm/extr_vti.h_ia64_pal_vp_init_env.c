
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ia64_pal_retval {int status; int v0; } ;
typedef int s64 ;


 int PAL_CALL_STK (struct ia64_pal_retval,int ,int ,int ,int ) ;
 int PAL_VP_INIT_ENV ;

__attribute__((used)) static inline s64 ia64_pal_vp_init_env(u64 config_options, u64 pbase_addr,
   u64 vbase_addr, u64 *vsa_base)
{
 struct ia64_pal_retval iprv;

 PAL_CALL_STK(iprv, PAL_VP_INIT_ENV, config_options, pbase_addr,
   vbase_addr);
 *vsa_base = iprv.v0;

 return iprv.status;
}
