
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnad {TYPE_1__* pcidev; } ;
struct bna_mem_info {int num; scalar_t__ len; scalar_t__ mem_type; TYPE_2__* mdl; } ;
struct bna_mem_descr {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {scalar_t__ len; int * kva; int dma; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ BNA_MEM_T_DMA ;
 int BNA_SET_DMA_ADDR (int ,int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bnad_mem_free (struct bnad*,struct bna_mem_info*) ;
 int * dma_alloc_coherent (int *,scalar_t__,int *,int ) ;
 TYPE_2__* kcalloc (int,int,int ) ;
 int * kzalloc (scalar_t__,int ) ;

__attribute__((used)) static int
bnad_mem_alloc(struct bnad *bnad,
        struct bna_mem_info *mem_info)
{
 int i;
 dma_addr_t dma_pa;

 if ((mem_info->num == 0) || (mem_info->len == 0)) {
  mem_info->mdl = ((void*)0);
  return 0;
 }

 mem_info->mdl = kcalloc(mem_info->num, sizeof(struct bna_mem_descr),
    GFP_KERNEL);
 if (mem_info->mdl == ((void*)0))
  return -ENOMEM;

 if (mem_info->mem_type == BNA_MEM_T_DMA) {
  for (i = 0; i < mem_info->num; i++) {
   mem_info->mdl[i].len = mem_info->len;
   mem_info->mdl[i].kva =
    dma_alloc_coherent(&bnad->pcidev->dev,
         mem_info->len, &dma_pa,
         GFP_KERNEL);
   if (mem_info->mdl[i].kva == ((void*)0))
    goto err_return;

   BNA_SET_DMA_ADDR(dma_pa,
      &(mem_info->mdl[i].dma));
  }
 } else {
  for (i = 0; i < mem_info->num; i++) {
   mem_info->mdl[i].len = mem_info->len;
   mem_info->mdl[i].kva = kzalloc(mem_info->len,
       GFP_KERNEL);
   if (mem_info->mdl[i].kva == ((void*)0))
    goto err_return;
  }
 }

 return 0;

err_return:
 bnad_mem_free(bnad, mem_info);
 return -ENOMEM;
}
