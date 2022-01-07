
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct iwl_rx_cmd_buffer {int _page_stolen; struct page* _page; } ;


 int get_page (struct page*) ;

__attribute__((used)) static inline struct page *rxb_steal_page(struct iwl_rx_cmd_buffer *r)
{
 r->_page_stolen = 1;
 get_page(r->_page);
 return r->_page;
}
