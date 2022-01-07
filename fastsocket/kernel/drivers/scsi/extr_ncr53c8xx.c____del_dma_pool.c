
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct m_pool {struct m_pool* next; } ;
typedef struct m_pool m_pool_s ;
struct TYPE_3__ {struct m_pool* next; } ;


 int __m_free (TYPE_1__*,struct m_pool*,int,char*) ;
 TYPE_1__ mp0 ;

__attribute__((used)) static void ___del_dma_pool(m_pool_s *p)
{
 struct m_pool **pp = &mp0.next;

 while (*pp && *pp != p)
  pp = &(*pp)->next;
 if (*pp) {
  *pp = (*pp)->next;
  __m_free(&mp0, p, sizeof(*p), "MPOOL");
 }
}
