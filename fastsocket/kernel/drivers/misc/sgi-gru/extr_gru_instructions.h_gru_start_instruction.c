
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_instruction {int dummy; } ;


 int gru_flush_cache (struct gru_instruction*) ;
 int gru_ordered_store_ulong (struct gru_instruction*,unsigned long) ;
 int mb () ;

__attribute__((used)) static inline void gru_start_instruction(struct gru_instruction *ins, unsigned long op64)
{
 gru_ordered_store_ulong(ins, op64);
 mb();
 gru_flush_cache(ins);
}
