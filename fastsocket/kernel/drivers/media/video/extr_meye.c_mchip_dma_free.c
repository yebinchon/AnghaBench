
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mchip_dmahandle; } ;


 int mchip_dma_setup (int ) ;
 TYPE_1__ meye ;
 int ptable_free () ;

__attribute__((used)) static void mchip_dma_free(void)
{
 if (meye.mchip_dmahandle) {
  mchip_dma_setup(0);
  ptable_free();
 }
}
