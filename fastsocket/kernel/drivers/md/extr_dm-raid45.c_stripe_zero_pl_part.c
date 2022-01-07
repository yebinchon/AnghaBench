
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe {int dummy; } ;
struct page_list {struct page_list* next; int page; } ;


 int BUG_ON (int) ;
 int PAGE_SIZE ;
 int PL (struct stripe*,int) ;
 unsigned int SECTORS_PER_PAGE ;
 unsigned int chunk_pages (unsigned int) ;
 int memset (int ,int ,int ) ;
 int page_address (int ) ;
 struct page_list* pl_elem (int ,unsigned int) ;

__attribute__((used)) static void stripe_zero_pl_part(struct stripe *stripe, int p,
    unsigned start, unsigned count)
{
 unsigned o = start / SECTORS_PER_PAGE, pages = chunk_pages(count);

 struct page_list *pl = pl_elem(PL(stripe, p), o);

 BUG_ON(!pl);
 while (pl && pages--) {
  BUG_ON(!pl->page);
  memset(page_address(pl->page), 0, PAGE_SIZE);
  pl = pl->next;
 }
}
