
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int wide_bus; scalar_t__ low_speed; } ;
struct mmc_card {TYPE_2__ cccr; TYPE_1__* host; } ;
struct TYPE_3__ {int caps; } ;


 int MMC_CAP_4_BIT_DATA ;
 int SDIO_BUS_WIDTH_4BIT ;
 int SDIO_CCCR_IF ;
 int mmc_io_rw_direct (struct mmc_card*,int,int ,int ,int ,int *) ;

__attribute__((used)) static int sdio_enable_wide(struct mmc_card *card)
{
 int ret;
 u8 ctrl;

 if (!(card->host->caps & MMC_CAP_4_BIT_DATA))
  return 0;

 if (card->cccr.low_speed && !card->cccr.wide_bus)
  return 0;

 ret = mmc_io_rw_direct(card, 0, 0, SDIO_CCCR_IF, 0, &ctrl);
 if (ret)
  return ret;

 ctrl |= SDIO_BUS_WIDTH_4BIT;

 ret = mmc_io_rw_direct(card, 1, 0, SDIO_CCCR_IF, ctrl, ((void*)0));
 if (ret)
  return ret;

 return 1;
}
