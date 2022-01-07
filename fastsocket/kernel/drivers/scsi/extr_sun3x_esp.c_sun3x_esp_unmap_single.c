
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp {int dev; } ;
typedef int dma_addr_t ;


 int dma_unmap_single (int ,int ,size_t,int) ;

__attribute__((used)) static void sun3x_esp_unmap_single(struct esp *esp, dma_addr_t addr,
      size_t sz, int dir)
{
 dma_unmap_single(esp->dev, addr, sz, dir);
}
