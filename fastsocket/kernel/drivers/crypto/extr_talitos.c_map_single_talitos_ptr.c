
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_ptr {unsigned char j_extent; int len; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int cpu_to_be16 (unsigned short) ;
 int dma_map_single (struct device*,void*,unsigned short,int) ;
 int to_talitos_ptr (struct talitos_ptr*,int ) ;

__attribute__((used)) static void map_single_talitos_ptr(struct device *dev,
       struct talitos_ptr *talitos_ptr,
       unsigned short len, void *data,
       unsigned char extent,
       enum dma_data_direction dir)
{
 dma_addr_t dma_addr = dma_map_single(dev, data, len, dir);

 talitos_ptr->len = cpu_to_be16(len);
 to_talitos_ptr(talitos_ptr, dma_addr);
 talitos_ptr->j_extent = extent;
}
