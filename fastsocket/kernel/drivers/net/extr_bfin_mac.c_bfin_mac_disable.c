
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int RE ;
 unsigned int TE ;
 unsigned int bfin_read_EMAC_OPMODE () ;
 int bfin_write_EMAC_OPMODE (unsigned int) ;

__attribute__((used)) static void bfin_mac_disable(void)
{
 unsigned int opmode;

 opmode = bfin_read_EMAC_OPMODE();
 opmode &= (~RE);
 opmode &= (~TE);

 bfin_write_EMAC_OPMODE(opmode);
}
