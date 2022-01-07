
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {int dummy; } ;


 scalar_t__ __qib_sdma_running (struct qib_pportdata*) ;
 int qib_sdma_make_progress (struct qib_pportdata*) ;

void __qib_sdma_intr(struct qib_pportdata *ppd)
{
 if (__qib_sdma_running(ppd))
  qib_sdma_make_progress(ppd);
}
