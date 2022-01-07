
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_host {int * data; scalar_t__ base; } ;


 scalar_t__ MMCIDATACTRL ;
 scalar_t__ MMCIMASK1 ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mmci_stop_data(struct mmci_host *host)
{
 writel(0, host->base + MMCIDATACTRL);
 writel(0, host->base + MMCIMASK1);
 host->data = ((void*)0);
}
