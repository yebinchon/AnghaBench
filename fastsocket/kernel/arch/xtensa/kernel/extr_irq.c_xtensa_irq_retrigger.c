
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTSET ;
 int set_sr (int,int ) ;

__attribute__((used)) static int xtensa_irq_retrigger(unsigned int irq)
{
 set_sr (1 << irq, INTSET);
 return 1;
}
