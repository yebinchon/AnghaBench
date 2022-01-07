
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_port {int rx_put; int hw; } ;


 int sky2_put_idx (int ,unsigned int,int ) ;

__attribute__((used)) static inline void sky2_rx_update(struct sky2_port *sky2, unsigned rxq)
{
 sky2_put_idx(sky2->hw, rxq, sky2->rx_put);
}
