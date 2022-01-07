
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct asd_ha_struct {TYPE_1__* pcidev; } ;
struct asd_dma_tok {int dma_handle; int vaddr; int size; } ;
struct TYPE_2__ {int dev; } ;


 int asd_dmatok_free (struct asd_dma_tok*) ;
 int dma_free_coherent (int *,int ,int ,int ) ;

__attribute__((used)) static inline void asd_free_coherent(struct asd_ha_struct *asd_ha,
         struct asd_dma_tok *token)
{
 if (token) {
  dma_free_coherent(&asd_ha->pcidev->dev, token->size,
      token->vaddr, token->dma_handle);
  asd_dmatok_free(token);
 }
}
