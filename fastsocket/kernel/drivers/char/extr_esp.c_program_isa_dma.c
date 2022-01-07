
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int) ;
 int disable_dma (int) ;
 int enable_dma (int) ;
 int release_dma_lock (unsigned long) ;
 int set_dma_addr (int,unsigned long) ;
 int set_dma_count (int,int) ;
 int set_dma_mode (int,int) ;

__attribute__((used)) static void program_isa_dma(int dma, int dir, unsigned long addr, int len)
{
 unsigned long flags;

 flags = claim_dma_lock();
 disable_dma(dma);
 clear_dma_ff(dma);
 set_dma_mode(dma, dir);
 set_dma_addr(dma, addr);
 set_dma_count(dma, len);
 enable_dma(dma);
 release_dma_lock(flags);
}
