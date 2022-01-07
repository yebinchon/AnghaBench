
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT91_EMAC_CTL ;
 unsigned long AT91_EMAC_MPE ;
 unsigned long at91_emac_read (int ) ;
 int at91_emac_write (int ,unsigned long) ;

__attribute__((used)) static void disable_mdi(void)
{
 unsigned long ctl;

 ctl = at91_emac_read(AT91_EMAC_CTL);
 at91_emac_write(AT91_EMAC_CTL, ctl & ~AT91_EMAC_MPE);
}
