
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw_hardware {TYPE_1__* memregs_CCR; } ;
struct TYPE_2__ {int reg_config_and_status; } ;


 unsigned short readw (int *) ;
 int writew (unsigned short,int *) ;

__attribute__((used)) static void acknowledge_pcmcia_interrupt(struct ipw_hardware *hw)
{
 unsigned short csr = readw(&hw->memregs_CCR->reg_config_and_status);

 csr &= 0xfffd;
 writew(csr, &hw->memregs_CCR->reg_config_and_status);
}
