
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mgsl_struct {unsigned int rx_buffer_count; scalar_t__ current_rx_buffer; TYPE_1__* rx_buffer_list; } ;
struct TYPE_2__ {int count; } ;


 unsigned long DMABUFFERSIZE ;

__attribute__((used)) static void mgsl_reset_rx_dma_buffers( struct mgsl_struct *info )
{
 unsigned int i;

 for ( i = 0; i < info->rx_buffer_count; i++ ) {
  *((unsigned long *)&(info->rx_buffer_list[i].count)) = DMABUFFERSIZE;


 }

 info->current_rx_buffer = 0;

}
