
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {int sdma_sw_clean_up_task; } ;


 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static void sdma_start_sw_clean_up(struct qib_pportdata *ppd)
{
 tasklet_hi_schedule(&ppd->sdma_sw_clean_up_task);
}
