
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {int dummy; } ;


 int BRDDAT5 ;
 unsigned char BRDDAT6 ;
 unsigned char BRDDAT7 ;
 unsigned char read_brdctl (struct aic7xxx_host*) ;
 int write_brdctl (struct aic7xxx_host*,int ) ;

__attribute__((used)) static void
aic2940_uwpro_wide_cable_detect(struct aic7xxx_host *p, int *int_68,
    int *ext_68, int *eeprom)
{
  unsigned char brdctl;






  write_brdctl(p, 0);






  brdctl = read_brdctl(p);
  *int_68 = !(brdctl & BRDDAT7);





  write_brdctl(p, BRDDAT5);
  brdctl = read_brdctl(p);

  *ext_68 = !(brdctl & BRDDAT6);
  *eeprom = !(brdctl & BRDDAT7);




}
