
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** drv; } ;
typedef TYPE_1__ ctlr_info_t ;


 int kfree (int *) ;

__attribute__((used)) static void cciss_free_drive_info(ctlr_info_t *h, int drv_index)
{
 kfree(h->drv[drv_index]);
 h->drv[drv_index] = ((void*)0);
}
