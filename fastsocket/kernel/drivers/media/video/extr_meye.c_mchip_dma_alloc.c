
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mchip_dmahandle; } ;


 TYPE_1__ meye ;
 scalar_t__ ptable_alloc () ;

__attribute__((used)) static int mchip_dma_alloc(void)
{
 if (!meye.mchip_dmahandle)
  if (ptable_alloc())
   return -1;
 return 0;
}
