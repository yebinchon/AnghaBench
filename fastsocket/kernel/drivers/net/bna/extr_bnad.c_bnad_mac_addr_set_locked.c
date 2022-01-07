
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bnad {TYPE_1__* rx_info; } ;
struct TYPE_2__ {int rx; } ;


 int BNA_CB_SUCCESS ;
 int EADDRNOTAVAIL ;
 int bna_rx_ucast_set (int ,int *,int *) ;
 int is_valid_ether_addr (int *) ;

int
bnad_mac_addr_set_locked(struct bnad *bnad, u8 *mac_addr)
{
 int ret;

 if (!is_valid_ether_addr(mac_addr))
  return -EADDRNOTAVAIL;


 if (!bnad->rx_info[0].rx)
  return 0;

 ret = bna_rx_ucast_set(bnad->rx_info[0].rx, mac_addr, ((void*)0));
 if (ret != BNA_CB_SUCCESS)
  return -EADDRNOTAVAIL;

 return 0;
}
