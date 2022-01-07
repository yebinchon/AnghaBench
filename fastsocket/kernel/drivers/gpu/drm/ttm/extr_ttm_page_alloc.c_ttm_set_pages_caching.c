
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;


 int pr_err (char*,unsigned int) ;
 int set_pages_array_uc (struct page**,unsigned int) ;
 int set_pages_array_wc (struct page**,unsigned int) ;



__attribute__((used)) static int ttm_set_pages_caching(struct page **pages,
  enum ttm_caching_state cstate, unsigned cpages)
{
 int r = 0;

 switch (cstate) {
 case 129:
  r = set_pages_array_uc(pages, cpages);
  if (r)
   pr_err("Failed to set %d pages to uc!\n", cpages);
  break;
 case 128:
  r = set_pages_array_wc(pages, cpages);
  if (r)
   pr_err("Failed to set %d pages to wc!\n", cpages);
  break;
 default:
  break;
 }
 return r;
}
