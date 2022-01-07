
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rx_buf_size; int max_frame_size; int rx_buf_total_size; int rx_buf_count; int * rx_buf; } ;
typedef int RXBUF ;
typedef TYPE_1__ MGSLPC_INFO ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kmalloc (int,int ) ;
 int rx_reset_buffers (TYPE_1__*) ;

__attribute__((used)) static int rx_alloc_buffers(MGSLPC_INFO *info)
{

 info->rx_buf_size = sizeof(RXBUF) + info->max_frame_size;


 info->rx_buf_total_size = info->rx_buf_size * 8;


 if (info->rx_buf_total_size > 0x10000)
  info->rx_buf_total_size = 0x10000;


 info->rx_buf_count = info->rx_buf_total_size / info->rx_buf_size;

 info->rx_buf = kmalloc(info->rx_buf_total_size, GFP_KERNEL);
 if (info->rx_buf == ((void*)0))
  return -ENOMEM;

 rx_reset_buffers(info);
 return 0;
}
