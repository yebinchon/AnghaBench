
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp {int dev; } ;
typedef int dma_addr_t ;


 int dma_map_single (int ,void*,size_t,int) ;

__attribute__((used)) static dma_addr_t jazz_esp_map_single(struct esp *esp, void *buf,
          size_t sz, int dir)
{
 return dma_map_single(esp->dev, buf, sz, dir);
}
