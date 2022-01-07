
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_ops_domain {struct dma_ops_domain** aperture; scalar_t__ bitmap; int domain; } ;


 int APERTURE_MAX_RANGES ;
 int free_page (unsigned long) ;
 int free_pagetable (int *) ;
 int kfree (struct dma_ops_domain*) ;

__attribute__((used)) static void dma_ops_domain_free(struct dma_ops_domain *dom)
{
 int i;

 if (!dom)
  return;

 free_pagetable(&dom->domain);

 for (i = 0; i < APERTURE_MAX_RANGES; ++i) {
  if (!dom->aperture[i])
   continue;
  free_page((unsigned long)dom->aperture[i]->bitmap);
  kfree(dom->aperture[i]);
 }

 kfree(dom);
}
