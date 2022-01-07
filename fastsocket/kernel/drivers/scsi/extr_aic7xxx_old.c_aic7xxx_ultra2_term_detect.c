
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {int dummy; } ;


 unsigned char BRDDAT3 ;
 unsigned char BRDDAT4 ;
 unsigned char BRDDAT5 ;
 unsigned char BRDDAT6 ;
 unsigned char BRDDAT7 ;
 unsigned char read_brdctl (struct aic7xxx_host*) ;

__attribute__((used)) static void
aic7xxx_ultra2_term_detect(struct aic7xxx_host *p, int *enableSE_low,
                           int *enableSE_high, int *enableLVD_low,
                           int *enableLVD_high, int *eprom_present)
{
  unsigned char brdctl;

  brdctl = read_brdctl(p);

  *eprom_present = (brdctl & BRDDAT7);
  *enableSE_high = (brdctl & BRDDAT6);
  *enableSE_low = (brdctl & BRDDAT5);
  *enableLVD_high = (brdctl & BRDDAT4);
  *enableLVD_low = (brdctl & BRDDAT3);
}
