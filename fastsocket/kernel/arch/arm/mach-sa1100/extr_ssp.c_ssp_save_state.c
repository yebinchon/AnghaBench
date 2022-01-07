
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_state {int cr1; int cr0; } ;


 int SSCR0_SSE ;
 int Ser4SSCR0 ;
 int Ser4SSCR1 ;

void ssp_save_state(struct ssp_state *ssp)
{
 ssp->cr0 = Ser4SSCR0;
 ssp->cr1 = Ser4SSCR1;

 Ser4SSCR0 &= ~SSCR0_SSE;
}
