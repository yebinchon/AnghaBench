
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qib_pportdata {int dummy; } ;


 int HaltInProg ;
 int InternalSDmaHalt ;
 int SYM_MASK (int ,int ) ;
 int ScbEmpty ;
 int ScoreBoardDrainInProg ;
 int SendDmaStatus_0 ;
 int krp_senddmastatus ;
 int qib_read_kreg_port (struct qib_pportdata*,int ) ;

__attribute__((used)) static int qib_sdma_7322_busy(struct qib_pportdata *ppd)
{
 u64 hwstatus = qib_read_kreg_port(ppd, krp_senddmastatus);

 return (hwstatus & SYM_MASK(SendDmaStatus_0, ScoreBoardDrainInProg)) ||
        (hwstatus & SYM_MASK(SendDmaStatus_0, HaltInProg)) ||
        !(hwstatus & SYM_MASK(SendDmaStatus_0, InternalSDmaHalt)) ||
        !(hwstatus & SYM_MASK(SendDmaStatus_0, ScbEmpty));
}
