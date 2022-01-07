
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct k_sonet_stats {int dummy; } ;
struct suni_priv {struct k_sonet_stats sonet_stats; struct atm_dev* dev; struct suni_priv* next; } ;
struct atm_dev {int dummy; } ;


 int ADD_LIMITED (int ,int) ;
 int GET (int ) ;
 scalar_t__ HZ ;
 int MRI ;
 int PUT (int ,int ) ;
 int RACP_CHEC ;
 int RACP_RCC ;
 int RACP_RCCL ;
 int RACP_RCCM ;
 int RACP_UHEC ;
 int RLOP_LB ;
 int RLOP_LBL ;
 int RLOP_LBM ;
 int RLOP_LF ;
 int RLOP_LFL ;
 int RLOP_LFM ;
 int RPOP_PBL ;
 int RPOP_PBM ;
 int RPOP_PFL ;
 int RPOP_PFM ;
 int RSOP_SBL ;
 int RSOP_SBM ;
 int TACP_TCC ;
 int TACP_TCCL ;
 int TACP_TCCM ;
 int corr_hcs ;
 scalar_t__ jiffies ;
 int line_bip ;
 int line_febe ;
 int mod_timer (int *,scalar_t__) ;
 int path_bip ;
 int path_febe ;
 int poll_timer ;
 int rx_cells ;
 int section_bip ;
 struct suni_priv* sunis ;
 int tx_cells ;
 int udelay (int) ;
 int uncorr_hcs ;

__attribute__((used)) static void suni_hz(unsigned long from_timer)
{
 struct suni_priv *walk;
 struct atm_dev *dev;
 struct k_sonet_stats *stats;

 for (walk = sunis; walk; walk = walk->next) {
  dev = walk->dev;
  stats = &walk->sonet_stats;
  PUT(0,MRI);
  udelay(1);
  ADD_LIMITED(section_bip,(GET(RSOP_SBL) & 0xff) |
      ((GET(RSOP_SBM) & 0xff) << 8));
  ADD_LIMITED(line_bip,(GET(RLOP_LBL) & 0xff) |
      ((GET(RLOP_LB) & 0xff) << 8) |
      ((GET(RLOP_LBM) & 0xf) << 16));
  ADD_LIMITED(path_bip,(GET(RPOP_PBL) & 0xff) |
      ((GET(RPOP_PBM) & 0xff) << 8));
  ADD_LIMITED(line_febe,(GET(RLOP_LFL) & 0xff) |
      ((GET(RLOP_LF) & 0xff) << 8) |
      ((GET(RLOP_LFM) & 0xf) << 16));
  ADD_LIMITED(path_febe,(GET(RPOP_PFL) & 0xff) |
      ((GET(RPOP_PFM) & 0xff) << 8));
  ADD_LIMITED(corr_hcs,GET(RACP_CHEC) & 0xff);
  ADD_LIMITED(uncorr_hcs,GET(RACP_UHEC) & 0xff);
  ADD_LIMITED(rx_cells,(GET(RACP_RCCL) & 0xff) |
      ((GET(RACP_RCC) & 0xff) << 8) |
      ((GET(RACP_RCCM) & 7) << 16));
  ADD_LIMITED(tx_cells,(GET(TACP_TCCL) & 0xff) |
      ((GET(TACP_TCC) & 0xff) << 8) |
      ((GET(TACP_TCCM) & 7) << 16));
 }
 if (from_timer) mod_timer(&poll_timer,jiffies+HZ);
}
