
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ring_info {int dummy; } ;
struct niu {int num_tx_rings; struct tx_ring_info* tx_rings; } ;


 int niu_reset_one_tx_channel (struct niu*,struct tx_ring_info*) ;

__attribute__((used)) static void niu_reset_tx_channels(struct niu *np)
{
 int i;

 for (i = 0; i < np->num_tx_rings; i++) {
  struct tx_ring_info *rp = &np->tx_rings[i];

  niu_reset_one_tx_channel(np, rp);
 }
}
