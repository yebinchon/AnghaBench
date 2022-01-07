
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_dma_mem {int dummy; } ;


 int memset (struct be_dma_mem*,int ,int) ;

__attribute__((used)) static void be_sgl_destroy_contiguous(struct be_dma_mem *sgl)
{
 memset(sgl, 0, sizeof(*sgl));
}
