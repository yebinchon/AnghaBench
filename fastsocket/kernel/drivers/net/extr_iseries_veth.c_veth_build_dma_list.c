
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chunk {unsigned long size; void* addr; } ;


 unsigned long PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 void* iseries_hv_addr (unsigned char*) ;
 void* min (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void veth_build_dma_list(struct dma_chunk *list,
           unsigned char *p, unsigned long length)
{
 unsigned long done;
 int i = 1;






 list[0].addr = iseries_hv_addr(p);
 list[0].size = min(length,
      PAGE_SIZE - ((unsigned long)p & ~PAGE_MASK));

 done = list[0].size;
 while (done < length) {
  list[i].addr = iseries_hv_addr(p + done);
  list[i].size = min(length-done, PAGE_SIZE);
  done += list[i].size;
  i++;
 }
}
