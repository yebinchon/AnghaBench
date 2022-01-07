
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {unsigned int length; } ;
struct ib_device {int dummy; } ;



__attribute__((used)) static unsigned int ipath_sg_dma_len(struct ib_device *dev,
         struct scatterlist *sg)
{
 return sg->length;
}
