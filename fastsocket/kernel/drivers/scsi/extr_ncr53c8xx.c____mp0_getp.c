
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nump; } ;
typedef TYPE_1__ m_pool_s ;
typedef scalar_t__ m_addr_t ;


 int MEMO_GFP_FLAGS ;
 int MEMO_PAGE_ORDER ;
 scalar_t__ __get_free_pages (int ,int ) ;

__attribute__((used)) static m_addr_t ___mp0_getp(m_pool_s *mp)
{
 m_addr_t m = __get_free_pages(MEMO_GFP_FLAGS, MEMO_PAGE_ORDER);
 if (m)
  ++mp->nump;
 return m;
}
