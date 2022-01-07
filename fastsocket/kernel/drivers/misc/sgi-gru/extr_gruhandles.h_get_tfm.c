
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_tlb_fault_map {int dummy; } ;


 int GRU_HANDLE_STRIDE ;
 int GRU_TFM_BASE ;

__attribute__((used)) static inline struct gru_tlb_fault_map *get_tfm(void *base, int ctxnum)
{
 return (struct gru_tlb_fault_map *)(base + GRU_TFM_BASE +
     ctxnum * GRU_HANDLE_STRIDE);
}
