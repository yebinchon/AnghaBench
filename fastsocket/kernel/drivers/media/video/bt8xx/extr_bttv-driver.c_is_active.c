
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct btcx_riscmem {scalar_t__ dma; scalar_t__ size; } ;



__attribute__((used)) static inline int is_active(struct btcx_riscmem *risc, u32 rc)
{
 if (rc < risc->dma)
  return 0;
 if (rc > risc->dma + risc->size)
  return 0;
 return 1;
}
