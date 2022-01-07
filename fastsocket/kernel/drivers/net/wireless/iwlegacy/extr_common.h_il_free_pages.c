
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_page_order; } ;
struct il_priv {int alloc_rxb_page; TYPE_1__ hw_params; } ;


 int free_pages (unsigned long,int ) ;

__attribute__((used)) static inline void
il_free_pages(struct il_priv *il, unsigned long page)
{
 free_pages(page, il->hw_params.rx_page_order);
 il->alloc_rxb_page--;
}
