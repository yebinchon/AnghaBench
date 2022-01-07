
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tmp_rx_buf; } ;
typedef TYPE_1__ SLMP_INFO ;


 int kfree (int *) ;

__attribute__((used)) static void free_tmp_rx_buf(SLMP_INFO *info)
{
 kfree(info->tmp_rx_buf);
 info->tmp_rx_buf = ((void*)0);
}
