
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int bs_persist_busnum; int bs_persist_segment; } ;
struct tioca_common {TYPE_1__ ca_common; } ;
struct ia64_sal_retval {scalar_t__ v0; scalar_t__ status; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SAL_CALL_NOLOCK (struct ia64_sal_retval,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ SN_SAL_IOIF_ERROR_INTERRUPT ;

__attribute__((used)) static irqreturn_t
tioca_error_intr_handler(int irq, void *arg)
{
 struct tioca_common *soft = arg;
 struct ia64_sal_retval ret_stuff;
 u64 segment;
 u64 busnum;
 ret_stuff.status = 0;
 ret_stuff.v0 = 0;

 segment = soft->ca_common.bs_persist_segment;
 busnum = soft->ca_common.bs_persist_busnum;

 SAL_CALL_NOLOCK(ret_stuff,
   (u64) SN_SAL_IOIF_ERROR_INTERRUPT,
   segment, busnum, 0, 0, 0, 0, 0);

 return IRQ_HANDLED;
}
