
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc9420_pdata {int rx_ring_tail; int rx_ring_head; } ;


 int RX_RING_SIZE ;
 scalar_t__ smsc9420_alloc_rx_buffer (struct smsc9420_pdata*,int) ;

__attribute__((used)) static void smsc9420_alloc_new_rx_buffers(struct smsc9420_pdata *pd)
{
 while (pd->rx_ring_tail != pd->rx_ring_head) {
  if (smsc9420_alloc_rx_buffer(pd, pd->rx_ring_tail))
   break;

  pd->rx_ring_tail = (pd->rx_ring_tail + 1) % RX_RING_SIZE;
 }
}
