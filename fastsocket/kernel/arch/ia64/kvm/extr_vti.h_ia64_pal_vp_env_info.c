
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ia64_pal_retval {int status; int v1; int v0; } ;
typedef int s64 ;


 int PAL_CALL_STK (struct ia64_pal_retval,int ,int ,int ,int ) ;
 int PAL_VP_ENV_INFO ;

__attribute__((used)) static inline s64 ia64_pal_vp_env_info(u64 *buffer_size,
  u64 *vp_env_info)
{
 struct ia64_pal_retval iprv;
 PAL_CALL_STK(iprv, PAL_VP_ENV_INFO, 0, 0, 0);
 *buffer_size = iprv.v0;
 *vp_env_info = iprv.v1;
 return iprv.status;
}
