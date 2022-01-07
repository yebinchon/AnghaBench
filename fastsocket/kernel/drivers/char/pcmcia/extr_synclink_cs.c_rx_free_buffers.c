
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rx_buf; } ;
typedef TYPE_1__ MGSLPC_INFO ;


 int kfree (int *) ;

__attribute__((used)) static void rx_free_buffers(MGSLPC_INFO *info)
{
 kfree(info->rx_buf);
 info->rx_buf = ((void*)0);
}
