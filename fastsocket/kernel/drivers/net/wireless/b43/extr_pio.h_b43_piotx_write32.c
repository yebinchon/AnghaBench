
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct b43_pio_txqueue {scalar_t__ mmio_base; int dev; } ;


 int b43_write32 (int ,scalar_t__,int ) ;

__attribute__((used)) static inline void b43_piotx_write32(struct b43_pio_txqueue *q,
         u16 offset, u32 value)
{
 b43_write32(q->dev, q->mmio_base + offset, value);
}
