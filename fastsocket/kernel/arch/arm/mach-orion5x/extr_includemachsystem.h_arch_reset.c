
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_SOFT_RESET ;
 int RSTOUTn_MASK ;
 int orion5x_setbits (int ,int) ;

__attribute__((used)) static inline void arch_reset(char mode, const char *cmd)
{



 orion5x_setbits(RSTOUTn_MASK, (1 << 2));
 orion5x_setbits(CPU_SOFT_RESET, 1);
}
