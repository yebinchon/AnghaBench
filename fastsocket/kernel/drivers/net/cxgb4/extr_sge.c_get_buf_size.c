
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_sw_desc {int dma_addr; } ;


 int FL_PG_ORDER ;
 int PAGE_SIZE ;
 int RX_LARGE_BUF ;

__attribute__((used)) static inline int get_buf_size(const struct rx_sw_desc *d)
{




 return PAGE_SIZE;

}
