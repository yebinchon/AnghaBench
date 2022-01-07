
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct qib_pportdata {size_t delay_mult; scalar_t__ hw_pidx; } ;


 int PBC_7322_VL15_SEND_CTRL ;
 int PBC_PORT_SEL_LSB ;
 size_t PBC_VL_NUM_LSB ;
 size_t* ib_rate_to_delay ;

__attribute__((used)) static u32 qib_7322_setpbc_control(struct qib_pportdata *ppd, u32 plen,
       u8 srate, u8 vl)
{
 u8 snd_mult = ppd->delay_mult;
 u8 rcv_mult = ib_rate_to_delay[srate];
 u32 ret;

 ret = rcv_mult > snd_mult ? ((plen + 1) >> 1) * snd_mult : 0;


 if (vl == 15)
  ret |= PBC_7322_VL15_SEND_CTRL;
 else
  ret |= vl << PBC_VL_NUM_LSB;
 ret |= ((u32)(ppd->hw_pidx)) << PBC_PORT_SEL_LSB;

 return ret;
}
