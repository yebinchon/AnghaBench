
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {scalar_t__ mchip_fnum; } ;


 int MCHIP_MM_FIR (int) ;
 int MCHIP_MM_PT_ADDR ;
 int mchip_set (int ,int ) ;
 TYPE_1__ meye ;

__attribute__((used)) static void mchip_dma_setup(dma_addr_t dma_addr)
{
 int i;

 mchip_set(MCHIP_MM_PT_ADDR, (u32)dma_addr);
 for (i = 0; i < 4; i++)
  mchip_set(MCHIP_MM_FIR(i), 0);
 meye.mchip_fnum = 0;
}
