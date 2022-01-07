
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct cmdQ_e {int addr_hi; int len_gen; int flags; scalar_t__ addr_lo; } ;
typedef scalar_t__ dma_addr_t ;


 int BUG_ON (int) ;
 int F_CMD_DATAVALID ;
 unsigned int SGE_TX_DESC_MAX_PLEN ;
 int V_CMD_EOP (unsigned int) ;
 int V_CMD_GEN1 (unsigned int) ;
 int V_CMD_GEN2 (unsigned int) ;
 int V_CMD_LEN (unsigned int) ;

__attribute__((used)) static inline void write_tx_desc(struct cmdQ_e *e, dma_addr_t mapping,
     unsigned int len, unsigned int gen,
     unsigned int eop)
{
 BUG_ON(len > SGE_TX_DESC_MAX_PLEN);

 e->addr_lo = (u32)mapping;
 e->addr_hi = (u64)mapping >> 32;
 e->len_gen = V_CMD_LEN(len) | V_CMD_GEN1(gen);
 e->flags = F_CMD_DATAVALID | V_CMD_EOP(eop) | V_CMD_GEN2(gen);
}
