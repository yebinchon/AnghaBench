
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct brcms_c_info {int band; TYPE_1__* stf; } ;
struct TYPE_2__ {int phytxant; } ;


 scalar_t__ BRCMS_ISNPHY (int ) ;
 int PHY_TXC_ANT_MASK ;
 int PHY_TXC_HTANT_MASK ;
 int _brcms_c_stf_phytxchain_sel (struct brcms_c_info*,int ) ;

u16 brcms_c_stf_d11hdrs_phyctl_txant(struct brcms_c_info *wlc, u32 rspec)
{
 u16 phytxant = wlc->stf->phytxant;
 u16 mask = PHY_TXC_ANT_MASK;


 if (BRCMS_ISNPHY(wlc->band)) {
  phytxant = _brcms_c_stf_phytxchain_sel(wlc, rspec);
  mask = PHY_TXC_HTANT_MASK;
 }
 phytxant |= phytxant & mask;
 return phytxant;
}
