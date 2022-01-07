
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** rx_pool; } ;
typedef TYPE_1__ pegasus_t ;


 scalar_t__ PEGASUS_MTU ;
 int RX_SKBS ;
 int * dev_alloc_skb (scalar_t__) ;
 int skb_reserve (int *,int) ;

__attribute__((used)) static void fill_skb_pool(pegasus_t * pegasus)
{
 int i;

 for (i = 0; i < RX_SKBS; i++) {
  if (pegasus->rx_pool[i])
   continue;
  pegasus->rx_pool[i] = dev_alloc_skb(PEGASUS_MTU + 2);




  if (pegasus->rx_pool[i] == ((void*)0))
   return;
  skb_reserve(pegasus->rx_pool[i], 2);
 }
}
