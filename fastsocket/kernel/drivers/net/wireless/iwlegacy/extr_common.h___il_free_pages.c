
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int rx_page_order; } ;
struct il_priv {int alloc_rxb_page; TYPE_1__ hw_params; } ;


 int __free_pages (struct page*,int ) ;

__attribute__((used)) static inline void
__il_free_pages(struct il_priv *il, struct page *page)
{
 __free_pages(page, il->hw_params.rx_page_order);
 il->alloc_rxb_page--;
}
