
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {int cfg; } ;


 int RESTART ;
 int SSYNC () ;
 TYPE_2__* dma_ch ;

__attribute__((used)) static void clear_dma_buffer(unsigned int channel)
{
 dma_ch[channel].regs->cfg |= RESTART;
 SSYNC();
 dma_ch[channel].regs->cfg &= ~RESTART;
}
