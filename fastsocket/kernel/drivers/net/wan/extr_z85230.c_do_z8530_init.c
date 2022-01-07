
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int regs; void* dcdcheck; int * irqs; } ;
struct TYPE_5__ {int regs; void* dcdcheck; int * irqs; } ;
struct z8530_dev {TYPE_1__ chanB; TYPE_2__ chanA; int type; } ;


 void* DCD ;
 int ENODEV ;
 int R0 ;
 int R12 ;
 int R15 ;
 int R8 ;
 int R9 ;
 int Tx_BUF_EMP ;
 int Z85230 ;
 int Z8530 ;
 int Z85C30 ;
 int memcpy (int ,int ,int) ;
 int read_zsreg (TYPE_2__*,int ) ;
 int reg_init ;
 int udelay (int) ;
 int write_zsreg (TYPE_2__*,int ,int) ;
 int z8530_nop ;

__attribute__((used)) static inline int do_z8530_init(struct z8530_dev *dev)
{


 dev->chanA.irqs=&z8530_nop;
 dev->chanB.irqs=&z8530_nop;
 dev->chanA.dcdcheck=DCD;
 dev->chanB.dcdcheck=DCD;


 write_zsreg(&dev->chanA, R9, 0xC0);
 udelay(200);

 write_zsreg(&dev->chanA, R12, 0xAA);
 if(read_zsreg(&dev->chanA, R12)!=0xAA)
  return -ENODEV;
 write_zsreg(&dev->chanA, R12, 0x55);
 if(read_zsreg(&dev->chanA, R12)!=0x55)
  return -ENODEV;

 dev->type=Z8530;





 write_zsreg(&dev->chanA, R15, 0x01);






 if(read_zsreg(&dev->chanA, R15)==0x01)
 {


  write_zsreg(&dev->chanA, R8, 0);
  if(read_zsreg(&dev->chanA, R0)&Tx_BUF_EMP)
   dev->type = Z85230;
  else
   dev->type = Z85C30;
 }







 write_zsreg(&dev->chanA, R15, 0);





 memcpy(dev->chanA.regs, reg_init, 16);
 memcpy(dev->chanB.regs, reg_init ,16);

 return 0;
}
