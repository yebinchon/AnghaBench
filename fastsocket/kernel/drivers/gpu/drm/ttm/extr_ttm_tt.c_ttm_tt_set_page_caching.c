
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;



__attribute__((used)) static inline int ttm_tt_set_page_caching(struct page *p,
       enum ttm_caching_state c_old,
       enum ttm_caching_state c_new)
{
 return 0;
}
