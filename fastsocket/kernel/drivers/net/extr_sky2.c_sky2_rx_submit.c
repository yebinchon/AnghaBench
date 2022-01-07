
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sky2_port {int rx_data_size; } ;
struct rx_ring_info {int * frag_addr; int skb; int data_addr; } ;
struct TYPE_2__ {int nr_frags; } ;


 int OP_BUFFER ;
 int OP_PACKET ;
 int PAGE_SIZE ;
 TYPE_1__* skb_shinfo (int ) ;
 int sky2_rx_add (struct sky2_port*,int ,int ,int ) ;

__attribute__((used)) static void sky2_rx_submit(struct sky2_port *sky2,
      const struct rx_ring_info *re)
{
 int i;

 sky2_rx_add(sky2, OP_PACKET, re->data_addr, sky2->rx_data_size);

 for (i = 0; i < skb_shinfo(re->skb)->nr_frags; i++)
  sky2_rx_add(sky2, OP_BUFFER, re->frag_addr[i], PAGE_SIZE);
}
