
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
struct brcms_hardware {int ** di; } ;


 size_t NFIFO ;
 int dma_detach (int *) ;

__attribute__((used)) static void brcms_b_detach_dmapio(struct brcms_hardware *wlc_hw)
{
 uint j;

 for (j = 0; j < NFIFO; j++) {
  if (wlc_hw->di[j]) {
   dma_detach(wlc_hw->di[j]);
   wlc_hw->di[j] = ((void*)0);
  }
 }
}
