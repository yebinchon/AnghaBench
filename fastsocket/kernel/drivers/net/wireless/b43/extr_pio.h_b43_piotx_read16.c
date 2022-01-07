
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct b43_pio_txqueue {scalar_t__ mmio_base; int dev; } ;


 scalar_t__ b43_read16 (int ,scalar_t__) ;

__attribute__((used)) static inline u16 b43_piotx_read16(struct b43_pio_txqueue *q, u16 offset)
{
 return b43_read16(q->dev, q->mmio_base + offset);
}
