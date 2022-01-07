
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_ptr {int len; int ptr; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int dma_unmap_single (struct device*,int ,int ,int) ;

__attribute__((used)) static void unmap_single_talitos_ptr(struct device *dev,
         struct talitos_ptr *talitos_ptr,
         enum dma_data_direction dir)
{
 dma_unmap_single(dev, be32_to_cpu(talitos_ptr->ptr),
    be16_to_cpu(talitos_ptr->len), dir);
}
