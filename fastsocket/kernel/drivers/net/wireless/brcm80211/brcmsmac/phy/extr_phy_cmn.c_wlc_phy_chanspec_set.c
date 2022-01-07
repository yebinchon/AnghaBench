
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct brcms_phy_pub {int dummy; } ;
struct TYPE_4__ {void (* chanset ) (struct brcms_phy*,int ) ;} ;
struct brcms_phy {TYPE_2__ pi_fptr; TYPE_1__* sh; } ;
struct TYPE_3__ {int physhim; } ;


 int CHSPEC_CHANNEL (int ) ;
 scalar_t__ CHSPEC_IS40 (int ) ;
 scalar_t__ CHSPEC_IS5G (int ) ;
 int D11_CURCHANNEL_40 ;
 int D11_CURCHANNEL_5G ;
 int M_CURCHANNEL ;
 void stub1 (struct brcms_phy*,int ) ;
 int wlapi_bmac_write_shm (int ,int ,int ) ;

void wlc_phy_chanspec_set(struct brcms_phy_pub *ppi, u16 chanspec)
{
 struct brcms_phy *pi = (struct brcms_phy *) ppi;
 u16 m_cur_channel;
 void (*chanspec_set)(struct brcms_phy *, u16) = ((void*)0);
 m_cur_channel = CHSPEC_CHANNEL(chanspec);
 if (CHSPEC_IS5G(chanspec))
  m_cur_channel |= D11_CURCHANNEL_5G;
 if (CHSPEC_IS40(chanspec))
  m_cur_channel |= D11_CURCHANNEL_40;
 wlapi_bmac_write_shm(pi->sh->physhim, M_CURCHANNEL, m_cur_channel);

 chanspec_set = pi->pi_fptr.chanset;
 if (chanspec_set)
  (*chanspec_set)(pi, chanspec);

}
