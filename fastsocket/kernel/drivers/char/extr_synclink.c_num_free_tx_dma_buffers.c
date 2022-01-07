
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgsl_struct {int tx_buffer_count; int tx_dma_buffers_used; } ;



__attribute__((used)) static int num_free_tx_dma_buffers(struct mgsl_struct *info)
{
 return info->tx_buffer_count - info->tx_dma_buffers_used;
}
