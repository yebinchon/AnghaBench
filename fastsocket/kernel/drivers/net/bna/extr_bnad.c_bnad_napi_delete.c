
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct bnad {int num_rxp_per_rx; TYPE_2__* rx_info; } ;
struct TYPE_4__ {TYPE_1__* rx_ctrl; } ;
struct TYPE_3__ {int napi; } ;


 int netif_napi_del (int *) ;

__attribute__((used)) static void
bnad_napi_delete(struct bnad *bnad, u32 rx_id)
{
 int i;


 for (i = 0; i < bnad->num_rxp_per_rx; i++)
  netif_napi_del(&bnad->rx_info[rx_id].rx_ctrl[i].napi);
}
