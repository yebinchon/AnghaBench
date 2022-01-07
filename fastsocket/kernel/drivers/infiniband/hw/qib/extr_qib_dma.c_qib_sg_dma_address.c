
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct scatterlist {scalar_t__ offset; } ;
struct ib_device {int dummy; } ;


 int page_address (int ) ;
 int sg_page (struct scatterlist*) ;

__attribute__((used)) static u64 qib_sg_dma_address(struct ib_device *dev, struct scatterlist *sg)
{
 u64 addr = (u64) page_address(sg_page(sg));

 if (addr)
  addr += sg->offset;
 return addr;
}
