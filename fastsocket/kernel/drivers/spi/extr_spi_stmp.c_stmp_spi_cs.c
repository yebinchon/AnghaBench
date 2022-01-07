
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BM_SSP_CTRL0_WAIT_FOR_CMD ;
 int BM_SSP_CTRL0_WAIT_FOR_IRQ ;

__attribute__((used)) static inline u32 stmp_spi_cs(unsigned cs)
{
 return ((cs & 1) ? BM_SSP_CTRL0_WAIT_FOR_CMD : 0) |
  ((cs & 2) ? BM_SSP_CTRL0_WAIT_FOR_IRQ : 0);
}
