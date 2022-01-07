
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {int blksz; int blocks; } ;



__attribute__((used)) static bool cb710_is_transfer_size_supported(struct mmc_data *data)
{
 return !(data->blksz & 15 && (data->blocks != 1 || data->blksz != 8));
}
