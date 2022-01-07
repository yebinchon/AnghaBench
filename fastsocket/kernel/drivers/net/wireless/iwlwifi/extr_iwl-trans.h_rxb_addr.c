
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_cmd_buffer {scalar_t__ _offset; int _page; } ;


 scalar_t__ page_address (int ) ;

__attribute__((used)) static inline void *rxb_addr(struct iwl_rx_cmd_buffer *r)
{
 return (void *)((unsigned long)page_address(r->_page) + r->_offset);
}
