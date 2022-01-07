
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {int dummy; } ;


 int __qib_sdma_process_event (struct qib_pportdata*,int ) ;
 int qib_sdma_event_e50_hw_cleaned ;

__attribute__((used)) static void qib_7322_sdma_hw_clean_up(struct qib_pportdata *ppd)
{
 __qib_sdma_process_event(ppd, qib_sdma_event_e50_hw_cleaned);
}
