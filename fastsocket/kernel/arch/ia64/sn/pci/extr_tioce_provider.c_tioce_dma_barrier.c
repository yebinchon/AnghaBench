
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ TIOCE_D64_ADDR (int) ;
 scalar_t__ TIOCE_M40S_ADDR (int) ;
 scalar_t__ TIOCE_M40_ADDR (int) ;

__attribute__((used)) static u64
tioce_dma_barrier(u64 bus_addr, int on)
{
 u64 barrier_bit;


 if (TIOCE_M40_ADDR(bus_addr) || TIOCE_M40S_ADDR(bus_addr))
  return bus_addr;

 if (TIOCE_D64_ADDR(bus_addr))
  barrier_bit = (1UL << 62);
 else
  barrier_bit = (1UL << 30);

 return (on) ? (bus_addr | barrier_bit) : (bus_addr & ~barrier_bit);
}
