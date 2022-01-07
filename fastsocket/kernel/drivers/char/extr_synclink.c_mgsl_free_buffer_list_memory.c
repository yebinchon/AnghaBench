
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgsl_struct {scalar_t__ bus_type; int * tx_buffer_list; int * rx_buffer_list; int * buffer_list; int buffer_list_dma_addr; } ;


 int BUFFERLISTSIZE ;
 scalar_t__ MGSL_BUS_TYPE_PCI ;
 int dma_free_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static void mgsl_free_buffer_list_memory( struct mgsl_struct *info )
{
 if (info->buffer_list && info->bus_type != MGSL_BUS_TYPE_PCI)
  dma_free_coherent(((void*)0), BUFFERLISTSIZE, info->buffer_list, info->buffer_list_dma_addr);

 info->buffer_list = ((void*)0);
 info->rx_buffer_list = ((void*)0);
 info->tx_buffer_list = ((void*)0);

}
