
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ __get_free_page (int ) ;
 int free_page (unsigned long) ;
 int xpram_page_in (unsigned long,int ) ;

__attribute__((used)) static int xpram_present(void)
{
 unsigned long mem_page;
 int rc;

 mem_page = (unsigned long) __get_free_page(GFP_KERNEL);
 if (!mem_page)
  return -ENOMEM;
 rc = xpram_page_in(mem_page, 0);
 free_page(mem_page);
 return rc ? -ENXIO : 0;
}
