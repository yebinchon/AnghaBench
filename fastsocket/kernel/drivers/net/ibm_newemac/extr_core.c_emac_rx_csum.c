
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int ip_summed; } ;
struct TYPE_2__ {int rx_packets_csum; } ;
struct emac_instance {TYPE_1__ stats; scalar_t__ tah_dev; } ;


 int CHECKSUM_UNNECESSARY ;

__attribute__((used)) static inline void emac_rx_csum(struct emac_instance *dev,
    struct sk_buff *skb, u16 ctrl)
{






}
