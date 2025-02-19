
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct cal_ctl_edges {scalar_t__ bChannel; int ctl; } ;


 scalar_t__ AR5416_BCHAN_UNUSED ;
 scalar_t__ CTL_EDGE_FLAGS (int ) ;
 scalar_t__ CTL_EDGE_TPOWER (int ) ;
 scalar_t__ MAX_RATE_POWER ;
 scalar_t__ ath9k_hw_fbin2freq (scalar_t__,int) ;

u16 ath9k_hw_get_max_edge_power(u16 freq, struct cal_ctl_edges *pRdEdgesPower,
    bool is2GHz, int num_band_edges)
{
 u16 twiceMaxEdgePower = MAX_RATE_POWER;
 int i;

 for (i = 0; (i < num_band_edges) &&
       (pRdEdgesPower[i].bChannel != AR5416_BCHAN_UNUSED); i++) {
  if (freq == ath9k_hw_fbin2freq(pRdEdgesPower[i].bChannel, is2GHz)) {
   twiceMaxEdgePower = CTL_EDGE_TPOWER(pRdEdgesPower[i].ctl);
   break;
  } else if ((i > 0) &&
      (freq < ath9k_hw_fbin2freq(pRdEdgesPower[i].bChannel,
            is2GHz))) {
   if (ath9k_hw_fbin2freq(pRdEdgesPower[i - 1].bChannel,
            is2GHz) < freq &&
       CTL_EDGE_FLAGS(pRdEdgesPower[i - 1].ctl)) {
    twiceMaxEdgePower =
     CTL_EDGE_TPOWER(pRdEdgesPower[i - 1].ctl);
   }
   break;
  }
 }

 return twiceMaxEdgePower;
}
