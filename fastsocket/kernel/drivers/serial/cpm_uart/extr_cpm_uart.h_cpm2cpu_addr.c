
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uart_cpm_port {scalar_t__ mem_size; void* mem_addr; int dma_addr; } ;


 int BUG () ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline void *cpm2cpu_addr(unsigned long addr,
                                 struct uart_cpm_port *pinfo)
{
 int offset;
 u32 val = addr;
 u32 dma = (u32)pinfo->dma_addr;

 if (likely(val >= dma && val < dma + pinfo->mem_size)) {
  offset = val - dma;
  return pinfo->mem_addr + offset;
 }

 BUG();
 return ((void*)0);
}
