
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int wl; } ;


 int B43_PHYROUTE ;
 int B43_PHYROUTE_BASE ;
 int B43_PHYROUTE_EXT_GPHY ;
 int B43_PHYROUTE_N_BMODE ;
 int B43_PHYROUTE_OFDM_GPHY ;
 int b43err (int ,char*,int) ;
 int dump_stack () ;

__attribute__((used)) static inline u16 adjust_phyreg(struct b43_wldev *dev, u16 offset)
{

 if ((offset & B43_PHYROUTE) == B43_PHYROUTE_OFDM_GPHY) {
  offset &= ~B43_PHYROUTE;
  offset |= B43_PHYROUTE_BASE;
 }
 return offset;
}
