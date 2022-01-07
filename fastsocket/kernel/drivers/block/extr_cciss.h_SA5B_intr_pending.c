
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vaddr; } ;
typedef TYPE_1__ ctlr_info_t ;


 unsigned long SA5B_INTR_PENDING ;
 scalar_t__ SA5_INTR_STATUS ;
 int printk (char*,unsigned long) ;
 unsigned long readl (scalar_t__) ;

__attribute__((used)) static unsigned long SA5B_intr_pending(ctlr_info_t *h)
{
        unsigned long register_value =
                readl(h->vaddr + SA5_INTR_STATUS);



        if( register_value & SA5B_INTR_PENDING)
                return 1;
        return 0 ;
}
