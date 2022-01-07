
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ia64_pal_retval {int status; } ;
typedef int s64 ;


 int PAL_CALL_STK (struct ia64_pal_retval,int ,scalar_t__,int ,int ) ;
 int PAL_VP_EXIT_ENV ;

__attribute__((used)) static inline s64 ia64_pal_vp_exit_env(u64 iva)
{
 struct ia64_pal_retval iprv;

 PAL_CALL_STK(iprv, PAL_VP_EXIT_ENV, (u64)iva, 0, 0);
 return iprv.status;
}
