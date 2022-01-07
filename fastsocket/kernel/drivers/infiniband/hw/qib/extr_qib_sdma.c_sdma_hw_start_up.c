
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_sdma_state {unsigned int first_sendbuf; unsigned int last_sendbuf; } ;
struct qib_pportdata {TYPE_1__* dd; struct qib_sdma_state sdma_state; } ;
struct TYPE_2__ {int (* f_sdma_hw_start_up ) (struct qib_pportdata*) ;int (* f_sendctrl ) (struct qib_pportdata*,int ) ;} ;


 int QIB_SENDCTRL_DISARM_BUF (unsigned int) ;
 int stub1 (struct qib_pportdata*,int ) ;
 int stub2 (struct qib_pportdata*) ;

__attribute__((used)) static void sdma_hw_start_up(struct qib_pportdata *ppd)
{
 struct qib_sdma_state *ss = &ppd->sdma_state;
 unsigned bufno;

 for (bufno = ss->first_sendbuf; bufno < ss->last_sendbuf; ++bufno)
  ppd->dd->f_sendctrl(ppd, QIB_SENDCTRL_DISARM_BUF(bufno));

 ppd->dd->f_sdma_hw_start_up(ppd);
}
