
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ia64_pal_retval {int status; } ;
typedef int s64 ;


 int PAL_CALL_STK (struct ia64_pal_retval,int ,int ,int ,int ) ;
 int PAL_VP_SAVE ;

__attribute__((used)) static inline s64 ia64_pal_vp_save(u64 *vpd, u64 pal_proc_vector)
{
 struct ia64_pal_retval iprv;

 PAL_CALL_STK(iprv, PAL_VP_SAVE, (u64)vpd, pal_proc_vector, 0);

 return iprv.status;
}
