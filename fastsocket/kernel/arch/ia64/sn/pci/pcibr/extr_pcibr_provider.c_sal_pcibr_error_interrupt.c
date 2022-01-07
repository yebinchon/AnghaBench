
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int bs_persist_segment; scalar_t__ bs_persist_busnum; } ;
struct pcibus_info {TYPE_1__ pbi_buscommon; } ;
struct ia64_sal_retval {scalar_t__ v0; scalar_t__ status; } ;


 int SAL_CALL_NOLOCK (struct ia64_sal_retval,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ,int ) ;
 scalar_t__ SN_SAL_IOIF_ERROR_INTERRUPT ;

__attribute__((used)) static int sal_pcibr_error_interrupt(struct pcibus_info *soft)
{
 struct ia64_sal_retval ret_stuff;
 u64 busnum;
 int segment;
 ret_stuff.status = 0;
 ret_stuff.v0 = 0;

 segment = soft->pbi_buscommon.bs_persist_segment;
 busnum = soft->pbi_buscommon.bs_persist_busnum;
 SAL_CALL_NOLOCK(ret_stuff,
   (u64) SN_SAL_IOIF_ERROR_INTERRUPT,
   (u64) segment, (u64) busnum, 0, 0, 0, 0, 0);

 return (int)ret_stuff.v0;
}
