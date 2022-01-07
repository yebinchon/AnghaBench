
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tx_buf_list; int * rx_buf_list; int * buffer_list; } ;
typedef TYPE_1__ SLMP_INFO ;



__attribute__((used)) static void free_dma_bufs(SLMP_INFO *info)
{
 info->buffer_list = ((void*)0);
 info->rx_buf_list = ((void*)0);
 info->tx_buf_list = ((void*)0);
}
