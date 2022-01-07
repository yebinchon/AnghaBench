
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct msmsdcc_host {int pdev_id; } ;


 int BUG () ;
 scalar_t__ MMCIFIFO ;
 scalar_t__ MSM_SDC1_PHYS ;
 scalar_t__ MSM_SDC2_PHYS ;
 scalar_t__ MSM_SDC3_PHYS ;
 scalar_t__ MSM_SDC4_PHYS ;

uint32_t msmsdcc_fifo_addr(struct msmsdcc_host *host)
{
 switch (host->pdev_id) {
 case 1:
  return MSM_SDC1_PHYS + MMCIFIFO;
 case 2:
  return MSM_SDC2_PHYS + MMCIFIFO;
 case 3:
  return MSM_SDC3_PHYS + MMCIFIFO;
 case 4:
  return MSM_SDC4_PHYS + MMCIFIFO;
 }
 BUG();
 return 0;
}
