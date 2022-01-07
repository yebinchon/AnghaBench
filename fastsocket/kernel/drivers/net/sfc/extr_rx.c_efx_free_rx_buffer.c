
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_buffer {int * page; } ;


 int put_page (int *) ;

__attribute__((used)) static void efx_free_rx_buffer(struct efx_rx_buffer *rx_buf)
{
 if (rx_buf->page) {
  put_page(rx_buf->page);
  rx_buf->page = ((void*)0);
 }
}
