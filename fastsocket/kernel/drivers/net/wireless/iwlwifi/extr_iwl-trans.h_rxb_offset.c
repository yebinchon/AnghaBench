
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_cmd_buffer {int _offset; } ;



__attribute__((used)) static inline int rxb_offset(struct iwl_rx_cmd_buffer *r)
{
 return r->_offset;
}
