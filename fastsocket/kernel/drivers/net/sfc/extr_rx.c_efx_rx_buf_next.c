
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {int ptr_mask; } ;
struct efx_rx_buffer {int dummy; } ;


 struct efx_rx_buffer* efx_rx_buffer (struct efx_rx_queue*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct efx_rx_buffer *
efx_rx_buf_next(struct efx_rx_queue *rx_queue, struct efx_rx_buffer *rx_buf)
{
 if (unlikely(rx_buf == efx_rx_buffer(rx_queue, rx_queue->ptr_mask)))
  return efx_rx_buffer(rx_queue, 0);
 else
  return rx_buf + 1;
}
