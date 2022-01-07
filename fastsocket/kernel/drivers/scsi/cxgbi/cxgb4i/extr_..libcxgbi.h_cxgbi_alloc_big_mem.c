
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 void* kmalloc (unsigned int,int ) ;
 int memset (void*,int ,unsigned int) ;
 void* vmalloc (unsigned int) ;

__attribute__((used)) static inline void *cxgbi_alloc_big_mem(unsigned int size,
     gfp_t gfp)
{
 void *p = kmalloc(size, gfp);
 if (!p)
  p = vmalloc(size);
 if (p)
  memset(p, 0, size);
 return p;
}
