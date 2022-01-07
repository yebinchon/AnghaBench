
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int KMMIO_PAGE_HASH_BITS ;
 size_t hash_long (unsigned long,int ) ;
 struct list_head* kmmio_page_table ;

__attribute__((used)) static struct list_head *kmmio_page_list(unsigned long page)
{
 return &kmmio_page_table[hash_long(page, KMMIO_PAGE_HASH_BITS)];
}
