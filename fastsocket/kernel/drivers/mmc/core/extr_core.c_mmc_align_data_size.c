
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int dummy; } ;



unsigned int mmc_align_data_size(struct mmc_card *card, unsigned int sz)
{





 sz = ((sz + 3) / 4) * 4;

 return sz;
}
