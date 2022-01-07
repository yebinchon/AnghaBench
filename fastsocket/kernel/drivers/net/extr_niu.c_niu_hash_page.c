
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rx_ring_info {struct page** rxhash; } ;
struct page {struct address_space* mapping; int index; } ;
struct address_space {int dummy; } ;


 unsigned int niu_hash_rxaddr (struct rx_ring_info*,int ) ;

__attribute__((used)) static void niu_hash_page(struct rx_ring_info *rp, struct page *page, u64 base)
{
 unsigned int h = niu_hash_rxaddr(rp, base);

 page->index = base;
 page->mapping = (struct address_space *) rp->rxhash[h];
 rp->rxhash[h] = page;
}
