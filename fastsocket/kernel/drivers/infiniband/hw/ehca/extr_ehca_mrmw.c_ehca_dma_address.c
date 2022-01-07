
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scatterlist {int dma_address; } ;
struct ib_device {int dummy; } ;



__attribute__((used)) static u64 ehca_dma_address(struct ib_device *dev, struct scatterlist *sg)
{
 return sg->dma_address;
}
