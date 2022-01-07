
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int PAGE_KERNEL ;
 int _PAGE_NO_CACHE ;
 void* __vmalloc (unsigned long,int ,int) ;
 void* vmalloc_32 (unsigned long) ;

__attribute__((used)) static inline void *drm_vmalloc_dma(unsigned long size)
{



 return vmalloc_32(size);

}
