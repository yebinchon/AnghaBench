
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct pasemi_mac {int * rx; TYPE_1__* dma_pdev; } ;
struct TYPE_4__ {int chan; int ring_info; int buf_dma; int buffers; } ;
struct TYPE_3__ {int dev; } ;


 int RX_RING_SIZE ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int kfree (int ) ;
 int pasemi_dma_free_chan (int *) ;
 int pasemi_mac_free_rx_buffers (struct pasemi_mac*) ;
 TYPE_2__* rx_ring (struct pasemi_mac*) ;

__attribute__((used)) static void pasemi_mac_free_rx_resources(struct pasemi_mac *mac)
{
 pasemi_mac_free_rx_buffers(mac);

 dma_free_coherent(&mac->dma_pdev->dev, RX_RING_SIZE * sizeof(u64),
     rx_ring(mac)->buffers, rx_ring(mac)->buf_dma);

 kfree(rx_ring(mac)->ring_info);
 pasemi_dma_free_chan(&rx_ring(mac)->chan);
 mac->rx = ((void*)0);
}
