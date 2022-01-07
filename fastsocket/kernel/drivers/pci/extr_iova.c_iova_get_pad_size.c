
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ilog2 (int) ;

__attribute__((used)) static int
iova_get_pad_size(int size, unsigned int limit_pfn)
{
 unsigned int pad_size = 0;
 unsigned int order = ilog2(size);

 if (order)
  pad_size = (limit_pfn + 1) % (1 << order);

 return pad_size;
}
