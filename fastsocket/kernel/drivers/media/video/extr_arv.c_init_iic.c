
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG (int,char*) ;
 int PLDI2CACK ;
 int PLDI2CCR ;
 int PLDI2CFREQ ;
 int PLDI2CMOD ;
 int ar_outl (int,int ) ;
 int freq ;

void init_iic(void)
{
 DEBUG(1, "init_iic:\n");





 ar_outl(0x0, PLDI2CCR);
 ar_outl(0x0300, PLDI2CMOD);
 ar_outl(0x1, PLDI2CACK);



 if (freq == 75) {
  ar_outl(369, PLDI2CFREQ);
 } else if (freq == 50) {
  ar_outl(244, PLDI2CFREQ);
 } else {
  ar_outl(244, PLDI2CFREQ);
 }
 ar_outl(0x1, PLDI2CCR);
}
