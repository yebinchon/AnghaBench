
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int bs_persist_busnum; int bs_persist_segment; } ;
struct tioce_common {TYPE_1__ ce_pcibus; } ;
struct ia64_sal_retval {scalar_t__ v0; scalar_t__ status; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SAL_CALL_NOLOCK (struct ia64_sal_retval,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ SN_SAL_IOIF_ERROR_INTERRUPT ;
 int panic (char*) ;

__attribute__((used)) static irqreturn_t
tioce_error_intr_handler(int irq, void *arg)
{
 struct tioce_common *soft = arg;
 struct ia64_sal_retval ret_stuff;
 ret_stuff.status = 0;
 ret_stuff.v0 = 0;

 SAL_CALL_NOLOCK(ret_stuff, (u64) SN_SAL_IOIF_ERROR_INTERRUPT,
   soft->ce_pcibus.bs_persist_segment,
   soft->ce_pcibus.bs_persist_busnum, 0, 0, 0, 0, 0);

 if (ret_stuff.v0)
  panic("tioce_error_intr_handler:  Fatal TIOCE error");

 return IRQ_HANDLED;
}
