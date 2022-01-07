
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {size_t cardno; } ;
struct TYPE_2__ {int config; } ;


 short CSR0 ;
 int CSR0_CLRALL ;
 int CSR0_STOP ;
 scalar_t__ L_ADDRREG ;
 scalar_t__ L_BUSIF ;
 scalar_t__ PORT ;
 TYPE_1__* cards ;
 int csr80 ;
 int inw (scalar_t__) ;
 scalar_t__ isa0 ;
 scalar_t__ isa1 ;
 int outw (short,scalar_t__) ;
 int writereg (int,int) ;

__attribute__((used)) static void ni65_set_performance(struct priv *p)
{
 writereg(CSR0_STOP | CSR0_CLRALL,CSR0);

 if( !(cards[p->cardno].config & 0x02) )
  return;

 outw(80,PORT+L_ADDRREG);
 if(inw(PORT+L_ADDRREG) != 80)
  return;

 writereg( (csr80 & 0x3fff) ,80);
 outw(0,PORT+L_ADDRREG);
 outw((short)isa0,PORT+L_BUSIF);
 outw(1,PORT+L_ADDRREG);
 outw((short)isa1,PORT+L_BUSIF);

 outw(CSR0,PORT+L_ADDRREG);
}
