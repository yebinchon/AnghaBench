
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_control_block_extended {int dummy; } ;


 int GRU_CBE_BASE ;
 int GRU_HANDLE_STRIDE ;

__attribute__((used)) static inline struct gru_control_block_extended *get_cbe(void *base, int ctxnum)
{
 return (struct gru_control_block_extended *)(base + GRU_CBE_BASE +
     ctxnum * GRU_HANDLE_STRIDE);
}
