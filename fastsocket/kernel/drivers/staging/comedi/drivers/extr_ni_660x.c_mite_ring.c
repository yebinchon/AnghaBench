
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {size_t chip_index; size_t counter_index; } ;
struct ni_660x_private {struct mite_dma_descriptor_ring*** mite_rings; } ;
struct mite_dma_descriptor_ring {int dummy; } ;



__attribute__((used)) static inline struct mite_dma_descriptor_ring *mite_ring(struct ni_660x_private
        *priv,
        struct ni_gpct
        *counter)
{
 return priv->mite_rings[counter->chip_index][counter->counter_index];
}
