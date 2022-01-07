
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int channel; } ;
struct msmsdcc_host {TYPE_1__ dma; } ;
struct mmc_data {int blksz; int blocks; } ;


 int EINVAL ;
 int ENOENT ;
 int MCI_FIFOSIZE ;

__attribute__((used)) static int validate_dma(struct msmsdcc_host *host, struct mmc_data *data)
{
 if (host->dma.channel == -1)
  return -ENOENT;

 if ((data->blksz * data->blocks) < MCI_FIFOSIZE)
  return -EINVAL;
 if ((data->blksz * data->blocks) % MCI_FIFOSIZE)
  return -EINVAL;
 return 0;
}
