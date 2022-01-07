
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdio_func {TYPE_1__* card; } ;
struct TYPE_2__ {int host; } ;


 int BUG_ON (int) ;
 int mmc_release_host (int ) ;

void sdio_release_host(struct sdio_func *func)
{
 BUG_ON(!func);
 BUG_ON(!func->card);

 mmc_release_host(func->card->host);
}
