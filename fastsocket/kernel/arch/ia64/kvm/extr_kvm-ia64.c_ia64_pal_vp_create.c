
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ia64_pal_retval {long status; } ;


 int PAL_CALL_STK (struct ia64_pal_retval,int ,int ,int ,int ) ;
 int PAL_VP_CREATE ;

long ia64_pal_vp_create(u64 *vpd, u64 *host_iva, u64 *opt_handler)
{
 struct ia64_pal_retval iprv;

 PAL_CALL_STK(iprv, PAL_VP_CREATE, (u64)vpd, (u64)host_iva,
   (u64)opt_handler);

 return iprv.status;
}
