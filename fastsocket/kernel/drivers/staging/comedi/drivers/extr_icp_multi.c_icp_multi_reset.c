
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_4__ {int DacCmdStatus; scalar_t__ io_addr; } ;
struct TYPE_3__ {int n_aochan; } ;


 unsigned int DAC_ST ;
 scalar_t__ ICP_MULTI_AO ;
 scalar_t__ ICP_MULTI_DAC_CSR ;
 scalar_t__ ICP_MULTI_DO ;
 scalar_t__ ICP_MULTI_INT_EN ;
 scalar_t__ ICP_MULTI_INT_STAT ;
 TYPE_2__* devpriv ;
 int printk (char*) ;
 TYPE_1__* this_board ;
 int udelay (int) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int icp_multi_reset(struct comedi_device *dev)
{
 unsigned int i;





 writew(0, devpriv->io_addr + ICP_MULTI_INT_EN);
 writew(0x00ff, devpriv->io_addr + ICP_MULTI_INT_STAT);

 if (this_board->n_aochan)

  for (i = 0; i < this_board->n_aochan; i++) {
   devpriv->DacCmdStatus &= 0xfcce;


   devpriv->DacCmdStatus |= (i << 8);


   writew(0, devpriv->io_addr + ICP_MULTI_AO);


   devpriv->DacCmdStatus |= DAC_ST;


   writew(devpriv->DacCmdStatus,
          devpriv->io_addr + ICP_MULTI_DAC_CSR);


   udelay(1);
  }

 writew(0, devpriv->io_addr + ICP_MULTI_DO);




 return 0;
}
