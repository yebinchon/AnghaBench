
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ssb_sprom {int revision; scalar_t__ il0mac; } ;
typedef int __be16 ;
struct TYPE_2__ {int a3; int a2; int a1; int a0; } ;


 int SPEX (int ,int ,int,int) ;
 int SPOFF (int ) ;
 int SSB_SPROM4_AGAIN0 ;
 int SSB_SPROM4_AGAIN01 ;
 int SSB_SPROM4_AGAIN0_SHIFT ;
 int SSB_SPROM4_AGAIN1 ;
 int SSB_SPROM4_AGAIN1_SHIFT ;
 int SSB_SPROM4_AGAIN2 ;
 int SSB_SPROM4_AGAIN23 ;
 int SSB_SPROM4_AGAIN2_SHIFT ;
 int SSB_SPROM4_AGAIN3 ;
 int SSB_SPROM4_AGAIN3_SHIFT ;
 int SSB_SPROM4_ANTAVAIL ;
 int SSB_SPROM4_ANTAVAIL_A ;
 int SSB_SPROM4_ANTAVAIL_A_SHIFT ;
 int SSB_SPROM4_ANTAVAIL_BG ;
 int SSB_SPROM4_ANTAVAIL_BG_SHIFT ;
 int SSB_SPROM4_BFL2HI ;
 int SSB_SPROM4_BFL2LO ;
 int SSB_SPROM4_BFLHI ;
 int SSB_SPROM4_BFLLO ;
 int SSB_SPROM4_BOARDREV ;
 int SSB_SPROM4_CCODE ;
 int SSB_SPROM4_ETHPHY ;
 int SSB_SPROM4_ETHPHY_ET0A ;
 int SSB_SPROM4_ETHPHY_ET1A ;
 int SSB_SPROM4_ETHPHY_ET1A_SHIFT ;
 int SSB_SPROM4_GPIOA ;
 int SSB_SPROM4_GPIOA_P0 ;
 int SSB_SPROM4_GPIOA_P1 ;
 int SSB_SPROM4_GPIOA_P1_SHIFT ;
 int SSB_SPROM4_GPIOB ;
 int SSB_SPROM4_GPIOB_P2 ;
 int SSB_SPROM4_GPIOB_P3 ;
 int SSB_SPROM4_GPIOB_P3_SHIFT ;
 int SSB_SPROM4_IL0MAC ;
 int SSB_SPROM4_ITSSI_A ;
 int SSB_SPROM4_ITSSI_A_SHIFT ;
 int SSB_SPROM4_ITSSI_BG ;
 int SSB_SPROM4_ITSSI_BG_SHIFT ;
 int SSB_SPROM4_MAXP_A ;
 int SSB_SPROM4_MAXP_A_MASK ;
 int SSB_SPROM4_MAXP_BG ;
 int SSB_SPROM4_MAXP_BG_MASK ;
 int SSB_SPROM5_BFL2HI ;
 int SSB_SPROM5_BFL2LO ;
 int SSB_SPROM5_BFLHI ;
 int SSB_SPROM5_BFLLO ;
 int SSB_SPROM5_CCODE ;
 int SSB_SPROM5_GPIOA ;
 int SSB_SPROM5_GPIOA_P0 ;
 int SSB_SPROM5_GPIOA_P1 ;
 int SSB_SPROM5_GPIOA_P1_SHIFT ;
 int SSB_SPROM5_GPIOB ;
 int SSB_SPROM5_GPIOB_P2 ;
 int SSB_SPROM5_GPIOB_P3 ;
 int SSB_SPROM5_GPIOB_P3_SHIFT ;
 int SSB_SPROM5_IL0MAC ;
 int * alpha2 ;
 int ant_available_a ;
 int ant_available_bg ;
 TYPE_1__ antenna_gain ;
 int board_rev ;
 int boardflags2_hi ;
 int boardflags2_lo ;
 int boardflags_hi ;
 int boardflags_lo ;
 int cpu_to_be16 (int ) ;
 int et0phyaddr ;
 int et1phyaddr ;
 int gpio0 ;
 int gpio1 ;
 int gpio2 ;
 int gpio3 ;
 int itssi_a ;
 int itssi_bg ;
 int maxpwr_a ;
 int maxpwr_bg ;
 int sprom_extract_r458 (struct ssb_sprom*,int const*) ;

__attribute__((used)) static void sprom_extract_r45(struct ssb_sprom *out, const u16 *in)
{
 int i;
 u16 v;
 u16 il0mac_offset;

 if (out->revision == 4)
  il0mac_offset = SSB_SPROM4_IL0MAC;
 else
  il0mac_offset = SSB_SPROM5_IL0MAC;

 for (i = 0; i < 3; i++) {
  v = in[SPOFF(il0mac_offset) + i];
  *(((__be16 *)out->il0mac) + i) = cpu_to_be16(v);
 }
 SPEX(et0phyaddr, SSB_SPROM4_ETHPHY, SSB_SPROM4_ETHPHY_ET0A, 0);
 SPEX(et1phyaddr, SSB_SPROM4_ETHPHY, SSB_SPROM4_ETHPHY_ET1A,
      SSB_SPROM4_ETHPHY_ET1A_SHIFT);
 SPEX(board_rev, SSB_SPROM4_BOARDREV, 0xFFFF, 0);
 if (out->revision == 4) {
  SPEX(alpha2[0], SSB_SPROM4_CCODE, 0xff00, 8);
  SPEX(alpha2[1], SSB_SPROM4_CCODE, 0x00ff, 0);
  SPEX(boardflags_lo, SSB_SPROM4_BFLLO, 0xFFFF, 0);
  SPEX(boardflags_hi, SSB_SPROM4_BFLHI, 0xFFFF, 0);
  SPEX(boardflags2_lo, SSB_SPROM4_BFL2LO, 0xFFFF, 0);
  SPEX(boardflags2_hi, SSB_SPROM4_BFL2HI, 0xFFFF, 0);
 } else {
  SPEX(alpha2[0], SSB_SPROM5_CCODE, 0xff00, 8);
  SPEX(alpha2[1], SSB_SPROM5_CCODE, 0x00ff, 0);
  SPEX(boardflags_lo, SSB_SPROM5_BFLLO, 0xFFFF, 0);
  SPEX(boardflags_hi, SSB_SPROM5_BFLHI, 0xFFFF, 0);
  SPEX(boardflags2_lo, SSB_SPROM5_BFL2LO, 0xFFFF, 0);
  SPEX(boardflags2_hi, SSB_SPROM5_BFL2HI, 0xFFFF, 0);
 }
 SPEX(ant_available_a, SSB_SPROM4_ANTAVAIL, SSB_SPROM4_ANTAVAIL_A,
      SSB_SPROM4_ANTAVAIL_A_SHIFT);
 SPEX(ant_available_bg, SSB_SPROM4_ANTAVAIL, SSB_SPROM4_ANTAVAIL_BG,
      SSB_SPROM4_ANTAVAIL_BG_SHIFT);
 SPEX(maxpwr_bg, SSB_SPROM4_MAXP_BG, SSB_SPROM4_MAXP_BG_MASK, 0);
 SPEX(itssi_bg, SSB_SPROM4_MAXP_BG, SSB_SPROM4_ITSSI_BG,
      SSB_SPROM4_ITSSI_BG_SHIFT);
 SPEX(maxpwr_a, SSB_SPROM4_MAXP_A, SSB_SPROM4_MAXP_A_MASK, 0);
 SPEX(itssi_a, SSB_SPROM4_MAXP_A, SSB_SPROM4_ITSSI_A,
      SSB_SPROM4_ITSSI_A_SHIFT);
 if (out->revision == 4) {
  SPEX(gpio0, SSB_SPROM4_GPIOA, SSB_SPROM4_GPIOA_P0, 0);
  SPEX(gpio1, SSB_SPROM4_GPIOA, SSB_SPROM4_GPIOA_P1,
       SSB_SPROM4_GPIOA_P1_SHIFT);
  SPEX(gpio2, SSB_SPROM4_GPIOB, SSB_SPROM4_GPIOB_P2, 0);
  SPEX(gpio3, SSB_SPROM4_GPIOB, SSB_SPROM4_GPIOB_P3,
       SSB_SPROM4_GPIOB_P3_SHIFT);
 } else {
  SPEX(gpio0, SSB_SPROM5_GPIOA, SSB_SPROM5_GPIOA_P0, 0);
  SPEX(gpio1, SSB_SPROM5_GPIOA, SSB_SPROM5_GPIOA_P1,
       SSB_SPROM5_GPIOA_P1_SHIFT);
  SPEX(gpio2, SSB_SPROM5_GPIOB, SSB_SPROM5_GPIOB_P2, 0);
  SPEX(gpio3, SSB_SPROM5_GPIOB, SSB_SPROM5_GPIOB_P3,
       SSB_SPROM5_GPIOB_P3_SHIFT);
 }


 SPEX(antenna_gain.a0, SSB_SPROM4_AGAIN01,
      SSB_SPROM4_AGAIN0, SSB_SPROM4_AGAIN0_SHIFT);
 SPEX(antenna_gain.a1, SSB_SPROM4_AGAIN01,
      SSB_SPROM4_AGAIN1, SSB_SPROM4_AGAIN1_SHIFT);
 SPEX(antenna_gain.a2, SSB_SPROM4_AGAIN23,
      SSB_SPROM4_AGAIN2, SSB_SPROM4_AGAIN2_SHIFT);
 SPEX(antenna_gain.a3, SSB_SPROM4_AGAIN23,
      SSB_SPROM4_AGAIN3, SSB_SPROM4_AGAIN3_SHIFT);

 sprom_extract_r458(out, in);


}
