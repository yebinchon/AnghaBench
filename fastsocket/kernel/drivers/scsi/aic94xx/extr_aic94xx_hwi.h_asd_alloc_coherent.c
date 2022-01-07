
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct asd_ha_struct {TYPE_1__* pcidev; } ;
struct asd_dma_tok {size_t size; int vaddr; int dma_handle; } ;
typedef int gfp_t ;
struct TYPE_2__ {int dev; } ;


 struct asd_dma_tok* asd_dmatok_alloc (int ) ;
 int asd_dmatok_free (struct asd_dma_tok*) ;
 int dma_alloc_coherent (int *,size_t,int *,int ) ;

__attribute__((used)) static inline struct asd_dma_tok *asd_alloc_coherent(struct asd_ha_struct *
           asd_ha, size_t size,
           gfp_t flags)
{
 struct asd_dma_tok *token = asd_dmatok_alloc(flags);
 if (token) {
  token->size = size;
  token->vaddr = dma_alloc_coherent(&asd_ha->pcidev->dev,
        token->size,
        &token->dma_handle,
        flags);
  if (!token->vaddr) {
   asd_dmatok_free(token);
   token = ((void*)0);
  }
 }
 return token;
}
