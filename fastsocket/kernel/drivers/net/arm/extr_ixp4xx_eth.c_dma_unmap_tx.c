
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port {TYPE_1__* netdev; } ;
struct desc {int data; scalar_t__ buf_len; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ALIGN (scalar_t__,int) ;
 int DMA_TO_DEVICE ;
 int dma_unmap_single (int *,int,scalar_t__,int ) ;

__attribute__((used)) static inline void dma_unmap_tx(struct port *port, struct desc *desc)
{




 dma_unmap_single(&port->netdev->dev, desc->data & ~3,
    ALIGN((desc->data & 3) + desc->buf_len, 4),
    DMA_TO_DEVICE);

}
