
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct esp {scalar_t__ rev; } ;


 scalar_t__ FASHME ;

__attribute__((used)) static u32 esp_dma_length_limit(struct esp *esp, u32 dma_addr, u32 dma_len)
{
 if (esp->rev == FASHME) {

  if (dma_len > (1U << 24))
   dma_len = (1U << 24);
 } else {
  u32 base, end;







  if (dma_len > (1U << 16))
   dma_len = (1U << 16);




  base = dma_addr & ((1U << 24) - 1U);
  end = base + dma_len;
  if (end > (1U << 24))
   end = (1U <<24);
  dma_len = end - base;
 }
 return dma_len;
}
