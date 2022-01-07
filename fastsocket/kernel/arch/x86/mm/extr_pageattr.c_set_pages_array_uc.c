
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int _PAGE_CACHE_UC_MINUS ;
 int _set_pages_array (struct page**,int,int ) ;

int set_pages_array_uc(struct page **pages, int addrinarray)
{
 return _set_pages_array(pages, addrinarray, _PAGE_CACHE_UC_MINUS);
}
