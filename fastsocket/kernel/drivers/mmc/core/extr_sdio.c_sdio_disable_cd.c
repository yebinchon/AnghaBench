
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int disable_cd; } ;
struct mmc_card {TYPE_1__ cccr; } ;


 int SDIO_BUS_CD_DISABLE ;
 int SDIO_CCCR_IF ;
 int mmc_io_rw_direct (struct mmc_card*,int,int ,int ,int ,int *) ;

__attribute__((used)) static int sdio_disable_cd(struct mmc_card *card)
{
 int ret;
 u8 ctrl;

 if (!card->cccr.disable_cd)
  return 0;

 ret = mmc_io_rw_direct(card, 0, 0, SDIO_CCCR_IF, 0, &ctrl);
 if (ret)
  return ret;

 ctrl |= SDIO_BUS_CD_DISABLE;

 return mmc_io_rw_direct(card, 1, 0, SDIO_CCCR_IF, ctrl, ((void*)0));
}
