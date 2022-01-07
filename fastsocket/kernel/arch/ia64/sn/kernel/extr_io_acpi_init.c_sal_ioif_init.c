
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ia64_sal_retval {long status; int v0; int member_3; int member_2; int member_1; int member_0; } ;


 int SAL_CALL_NOLOCK (struct ia64_sal_retval,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int SN_SAL_IOIF_INIT ;

__attribute__((used)) static long
sal_ioif_init(u64 *result)
{
 struct ia64_sal_retval isrv = {0,0,0,0};

 SAL_CALL_NOLOCK(isrv,
   SN_SAL_IOIF_INIT, 0, 0, 0, 0, 0, 0, 0);
 *result = isrv.v0;
 return isrv.status;
}
