
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** gendisk; } ;
typedef TYPE_1__ ctlr_info_t ;


 int put_disk (int *) ;

__attribute__((used)) static void cciss_free_gendisk(ctlr_info_t *h, int drv_index)
{
 put_disk(h->gendisk[drv_index]);
 h->gendisk[drv_index] = ((void*)0);
}
