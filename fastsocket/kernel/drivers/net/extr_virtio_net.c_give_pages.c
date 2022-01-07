
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {struct page* pages; } ;
struct page {long private; } ;



__attribute__((used)) static void give_pages(struct virtnet_info *vi, struct page *page)
{
 struct page *end;


 for (end = page; end->private; end = (struct page *)end->private);
 end->private = (unsigned long)vi->pages;
 vi->pages = page;
}
