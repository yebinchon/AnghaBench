
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct brcms_c_info {TYPE_1__* stf; } ;
struct TYPE_2__ {int phytxant; int txchain; scalar_t__ txant; } ;


 scalar_t__ ANT_TX_DEF ;
 scalar_t__ PHY_TXC1_MODE_SISO ;
 int PHY_TXC_ANT_MASK ;
 int PHY_TXC_ANT_SHIFT ;
 scalar_t__ rspec_stf (int ) ;

__attribute__((used)) static u16 _brcms_c_stf_phytxchain_sel(struct brcms_c_info *wlc,
           u32 rspec)
{
 u16 phytxant = wlc->stf->phytxant;

 if (rspec_stf(rspec) != PHY_TXC1_MODE_SISO)
  phytxant = wlc->stf->txchain << PHY_TXC_ANT_SHIFT;
 else if (wlc->stf->txant == ANT_TX_DEF)
  phytxant = wlc->stf->txchain << PHY_TXC_ANT_SHIFT;
 phytxant &= PHY_TXC_ANT_MASK;
 return phytxant;
}
