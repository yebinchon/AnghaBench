
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_sdhci_platdata {scalar_t__ cfg_card; scalar_t__ cfg_gpio; int max_width; } ;


 struct s3c_sdhci_platdata s3c_hsmmc1_def_platdata ;

void s3c_sdhci1_set_platdata(struct s3c_sdhci_platdata *pd)
{
 struct s3c_sdhci_platdata *set = &s3c_hsmmc1_def_platdata;

 set->max_width = pd->max_width;

 if (pd->cfg_gpio)
  set->cfg_gpio = pd->cfg_gpio;
 if (pd->cfg_card)
  set->cfg_card = pd->cfg_card;
}
