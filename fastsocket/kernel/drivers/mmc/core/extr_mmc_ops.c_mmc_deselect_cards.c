
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;


 int _mmc_select_card (struct mmc_host*,int *) ;

int mmc_deselect_cards(struct mmc_host *host)
{
 return _mmc_select_card(host, ((void*)0));
}
