
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {int dummy; } ;
struct atmel_mci {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int atmci_submit_data_dma(struct atmel_mci *host, struct mmc_data *data)
{
 return -ENOSYS;
}
