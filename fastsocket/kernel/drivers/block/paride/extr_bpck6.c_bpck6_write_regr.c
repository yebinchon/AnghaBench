
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int PIA ;


 int PPCSTRUCT (int *) ;
 int ppc6_wr_port (int ,int,int ) ;

__attribute__((used)) static void bpck6_write_regr(PIA *pi, int cont, int reg, int val)
{

 if (reg>=0 && reg<=7 && cont>=0 && cont<=1)
 {
  ppc6_wr_port(PPCSTRUCT(pi),cont?reg|8:reg,(u8)val);
 }
}
