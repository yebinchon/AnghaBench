
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp {int dummy; } ;
typedef int dma_addr_t ;



__attribute__((used)) static dma_addr_t mac_esp_map_single(struct esp *esp, void *buf,
         size_t sz, int dir)
{
 return (dma_addr_t)buf;
}
