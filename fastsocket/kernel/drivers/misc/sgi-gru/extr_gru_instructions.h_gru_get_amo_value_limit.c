
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_instruction {int avalue; } ;



__attribute__((used)) static inline int gru_get_amo_value_limit(void *cb)
{
 struct gru_instruction *ins = (void *)cb;

 return ins->avalue >> 32;
}
