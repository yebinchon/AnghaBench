
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_pool_s ;


 int DEBUG_ALLOC ;
 int DEBUG_FLAGS ;
 int ___m_free (int *,void*,int) ;
 int printk (char*,char*,int,void*) ;

__attribute__((used)) static void __m_free(m_pool_s *mp, void *ptr, int size, char *name)
{
 if (DEBUG_FLAGS & DEBUG_ALLOC)
  printk ("freeing %-10s[%4d] @%p.\n", name, size, ptr);

 ___m_free(mp, ptr, size);

}
