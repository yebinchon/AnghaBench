
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmc_request {int dummy; } ;
struct TYPE_4__ {scalar_t__ len; scalar_t__ offset; scalar_t__ index; } ;
struct TYPE_3__ {scalar_t__ dir; scalar_t__ len; } ;
struct au1xmmc_host {int flags; int mmc; int status; TYPE_2__ pio; TYPE_1__ dma; struct mmc_request* mrq; } ;


 int HOST_F_ACTIVE ;
 int HOST_F_DMA ;
 int HOST_S_IDLE ;
 int mmc_request_done (int ,struct mmc_request*) ;

__attribute__((used)) static void au1xmmc_finish_request(struct au1xmmc_host *host)
{
 struct mmc_request *mrq = host->mrq;

 host->mrq = ((void*)0);
 host->flags &= HOST_F_ACTIVE | HOST_F_DMA;

 host->dma.len = 0;
 host->dma.dir = 0;

 host->pio.index = 0;
 host->pio.offset = 0;
 host->pio.len = 0;

 host->status = HOST_S_IDLE;

 mmc_request_done(host->mmc, mrq);
}
