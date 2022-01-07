
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int dummy; } ;


 int DMA1_RESET_REG ;
 int DMA2_RESET_REG ;
 unsigned long claim_dma_lock () ;
 int dma_outb (int ,int ) ;
 int enable_dma (int) ;
 int release_dma_lock (unsigned long) ;
 int set_dma_addr (int,int) ;
 int set_dma_count (int,int) ;

__attribute__((used)) static int i8237A_resume(struct sys_device *dev)
{
 unsigned long flags;
 int i;

 flags = claim_dma_lock();

 dma_outb(0, DMA1_RESET_REG);
 dma_outb(0, DMA2_RESET_REG);

 for (i = 0; i < 8; i++) {
  set_dma_addr(i, 0x000000);

  set_dma_count(i, 1);
 }


 enable_dma(4);

 release_dma_lock(flags);

 return 0;
}
