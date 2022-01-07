
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {int efx; } ;
struct efx_rx_buffer {int flags; int * page; } ;


 int EFX_RX_BUF_LAST_IN_PAGE ;
 int efx_free_rx_buffer (struct efx_rx_buffer*) ;
 int efx_unmap_rx_buffer (int ,struct efx_rx_buffer*) ;
 int put_page (int *) ;

__attribute__((used)) static void efx_fini_rx_buffer(struct efx_rx_queue *rx_queue,
          struct efx_rx_buffer *rx_buf)
{

 if (rx_buf->page)
  put_page(rx_buf->page);


 if (rx_buf->flags & EFX_RX_BUF_LAST_IN_PAGE) {
  efx_unmap_rx_buffer(rx_queue->efx, rx_buf);
  efx_free_rx_buffer(rx_buf);
 }
 rx_buf->page = ((void*)0);
}
