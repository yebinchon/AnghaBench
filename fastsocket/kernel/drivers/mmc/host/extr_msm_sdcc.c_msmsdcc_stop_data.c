
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ got_datablkend; scalar_t__ got_dataend; int * data; } ;
struct msmsdcc_host {TYPE_1__ curr; scalar_t__ base; } ;


 scalar_t__ MMCIDATACTRL ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void
msmsdcc_stop_data(struct msmsdcc_host *host)
{
 writel(0, host->base + MMCIDATACTRL);
 host->curr.data = ((void*)0);
 host->curr.got_dataend = host->curr.got_datablkend = 0;
}
