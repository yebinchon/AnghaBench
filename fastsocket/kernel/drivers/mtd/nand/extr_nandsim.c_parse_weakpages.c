
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct weak_page {unsigned int page_no; unsigned int max_writes; int list; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NS_ERR (char*) ;
 struct weak_page* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 unsigned int simple_strtoul (char*,char**,int ) ;
 int weak_pages ;
 char* weakpages ;

__attribute__((used)) static int parse_weakpages(void)
{
 char *w;
 int zero_ok;
 unsigned int page_no;
 unsigned int max_writes;
 struct weak_page *wp;

 if (!weakpages)
  return 0;
 w = weakpages;
 do {
  zero_ok = (*w == '0' ? 1 : 0);
  page_no = simple_strtoul(w, &w, 0);
  if (!zero_ok && !page_no) {
   NS_ERR("invalid weakpagess.\n");
   return -EINVAL;
  }
  max_writes = 3;
  if (*w == ':') {
   w += 1;
   max_writes = simple_strtoul(w, &w, 0);
  }
  if (*w == ',')
   w += 1;
  wp = kzalloc(sizeof(*wp), GFP_KERNEL);
  if (!wp) {
   NS_ERR("unable to allocate memory.\n");
   return -ENOMEM;
  }
  wp->page_no = page_no;
  wp->max_writes = max_writes;
  list_add(&wp->list, &weak_pages);
 } while (*w);
 return 0;
}
