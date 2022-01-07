
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av7110 {int dummy; } ;


 int DEBINOSWAP ;
 int IRQ_RX ;
 int irdebi (struct av7110*,int ,int ,int ,int) ;

__attribute__((used)) static inline void ARM_ClearIrq(struct av7110 *av7110)
{
 irdebi(av7110, DEBINOSWAP, IRQ_RX, 0, 2);
}
