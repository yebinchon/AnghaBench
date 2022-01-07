
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_dma_tok {int dummy; } ;


 int asd_dma_token_cache ;
 int kmem_cache_free (int ,struct asd_dma_tok*) ;

__attribute__((used)) static inline void asd_dmatok_free(struct asd_dma_tok *token)
{
 kmem_cache_free(asd_dma_token_cache, token);
}
