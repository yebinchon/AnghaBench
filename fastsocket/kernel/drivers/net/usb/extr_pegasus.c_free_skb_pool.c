
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** rx_pool; } ;
typedef TYPE_1__ pegasus_t ;


 int RX_SKBS ;
 int dev_kfree_skb (int *) ;

__attribute__((used)) static void free_skb_pool(pegasus_t * pegasus)
{
 int i;

 for (i = 0; i < RX_SKBS; i++) {
  if (pegasus->rx_pool[i]) {
   dev_kfree_skb(pegasus->rx_pool[i]);
   pegasus->rx_pool[i] = ((void*)0);
  }
 }
}
