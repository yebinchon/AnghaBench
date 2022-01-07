
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIA ;


 int PPCSTRUCT (int *) ;
 int ppc6_close (int ) ;
 int ppc6_wr_extout (int ,int) ;
 int printk (char*) ;
 scalar_t__ verbose ;

__attribute__((used)) static void bpck6_disconnect ( PIA *pi )
{
 if(verbose)
 {
  printk("disconnect\n");
 }
 ppc6_wr_extout(PPCSTRUCT(pi),0x0);
 ppc6_close(PPCSTRUCT(pi));
}
