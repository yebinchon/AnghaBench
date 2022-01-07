
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum km_type { ____Placeholder_km_type } km_type ;


 void* kmap_atomic_prot_pfn (unsigned long,int,int ) ;
 int kmap_prot ;

void *kmap_atomic_pfn(unsigned long pfn, enum km_type type)
{
 return kmap_atomic_prot_pfn(pfn, type, kmap_prot);
}
