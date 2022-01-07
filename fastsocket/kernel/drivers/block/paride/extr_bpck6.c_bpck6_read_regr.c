
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIA ;


 int PPCSTRUCT (int *) ;
 unsigned int ppc6_rd_port (int ,int) ;

__attribute__((used)) static int bpck6_read_regr(PIA *pi, int cont, int reg)
{
 unsigned int out;


 if (reg<0 || reg>7 || cont<0 || cont>2)
 {
  return(-1);
 }
 out=ppc6_rd_port(PPCSTRUCT(pi),cont?reg|8:reg);
 return(out);
}
