
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ioat2_dma_chan {scalar_t__ head; } ;



__attribute__((used)) static inline u16 ioat2_desc_alloc(struct ioat2_dma_chan *ioat, u16 len)
{
 ioat->head += len;
 return ioat->head - len;
}
