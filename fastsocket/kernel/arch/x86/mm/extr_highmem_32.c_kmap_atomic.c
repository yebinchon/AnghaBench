
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef enum km_type { ____Placeholder_km_type } km_type ;


 void* kmap_atomic_prot (struct page*,int,int ) ;
 int kmap_prot ;

void *kmap_atomic(struct page *page, enum km_type type)
{
 return kmap_atomic_prot(page, type, kmap_prot);
}
