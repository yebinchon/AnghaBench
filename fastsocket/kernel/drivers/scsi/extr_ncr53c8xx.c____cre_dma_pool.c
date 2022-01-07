
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; int freep; int getp; int bush; } ;
typedef TYPE_1__ m_pool_s ;
typedef int m_bush_t ;
struct TYPE_8__ {TYPE_1__* next; } ;


 int ___dma_freep ;
 int ___dma_getp ;
 TYPE_1__* __m_calloc (TYPE_2__*,int,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_2__ mp0 ;

__attribute__((used)) static m_pool_s *___cre_dma_pool(m_bush_t bush)
{
 m_pool_s *mp;
 mp = __m_calloc(&mp0, sizeof(*mp), "MPOOL");
 if (mp) {
  memset(mp, 0, sizeof(*mp));
  mp->bush = bush;
  mp->getp = ___dma_getp;
  mp->freep = ___dma_freep;
  mp->next = mp0.next;
  mp0.next = mp;
 }
 return mp;
}
