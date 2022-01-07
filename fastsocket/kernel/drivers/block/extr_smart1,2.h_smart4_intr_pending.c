
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vaddr; } ;
typedef TYPE_1__ ctlr_info_t ;


 unsigned long FIFO_NOT_EMPTY ;
 unsigned long S42XX_INTR_PENDING ;
 scalar_t__ S42XX_INTR_STATUS ;
 unsigned long readl (scalar_t__) ;

__attribute__((used)) static unsigned long smart4_intr_pending(ctlr_info_t *h)
{
 unsigned long register_value =
  readl(h->vaddr + S42XX_INTR_STATUS);

 if( register_value & S42XX_INTR_PENDING)
  return FIFO_NOT_EMPTY;
 return 0 ;
}
