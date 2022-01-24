#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct k_sonet_stats {int dummy; } ;
struct suni_priv {struct k_sonet_stats sonet_stats; struct atm_dev* dev; struct suni_priv* next; } ;
struct atm_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  MRI ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RACP_CHEC ; 
 int /*<<< orphan*/  RACP_RCC ; 
 int /*<<< orphan*/  RACP_RCCL ; 
 int /*<<< orphan*/  RACP_RCCM ; 
 int /*<<< orphan*/  RACP_UHEC ; 
 int /*<<< orphan*/  RLOP_LB ; 
 int /*<<< orphan*/  RLOP_LBL ; 
 int /*<<< orphan*/  RLOP_LBM ; 
 int /*<<< orphan*/  RLOP_LF ; 
 int /*<<< orphan*/  RLOP_LFL ; 
 int /*<<< orphan*/  RLOP_LFM ; 
 int /*<<< orphan*/  RPOP_PBL ; 
 int /*<<< orphan*/  RPOP_PBM ; 
 int /*<<< orphan*/  RPOP_PFL ; 
 int /*<<< orphan*/  RPOP_PFM ; 
 int /*<<< orphan*/  RSOP_SBL ; 
 int /*<<< orphan*/  RSOP_SBM ; 
 int /*<<< orphan*/  TACP_TCC ; 
 int /*<<< orphan*/  TACP_TCCL ; 
 int /*<<< orphan*/  TACP_TCCM ; 
 int /*<<< orphan*/  corr_hcs ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  line_bip ; 
 int /*<<< orphan*/  line_febe ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  path_bip ; 
 int /*<<< orphan*/  path_febe ; 
 int /*<<< orphan*/  poll_timer ; 
 int /*<<< orphan*/  rx_cells ; 
 int /*<<< orphan*/  section_bip ; 
 struct suni_priv* sunis ; 
 int /*<<< orphan*/  tx_cells ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  uncorr_hcs ; 

__attribute__((used)) static void FUNC5(unsigned long from_timer)
{
	struct suni_priv *walk;
	struct atm_dev *dev;
	struct k_sonet_stats *stats;

	for (walk = sunis; walk; walk = walk->next) {
		dev = walk->dev;
		stats = &walk->sonet_stats;
		FUNC2(0,MRI); /* latch counters */
		FUNC4(1);
		FUNC0(section_bip,(FUNC1(RSOP_SBL) & 0xff) |
		    ((FUNC1(RSOP_SBM) & 0xff) << 8));
		FUNC0(line_bip,(FUNC1(RLOP_LBL) & 0xff) |
		    ((FUNC1(RLOP_LB) & 0xff) << 8) |
		    ((FUNC1(RLOP_LBM) & 0xf) << 16));
		FUNC0(path_bip,(FUNC1(RPOP_PBL) & 0xff) |
		    ((FUNC1(RPOP_PBM) & 0xff) << 8));
		FUNC0(line_febe,(FUNC1(RLOP_LFL) & 0xff) |
		    ((FUNC1(RLOP_LF) & 0xff) << 8) |
		    ((FUNC1(RLOP_LFM) & 0xf) << 16));
		FUNC0(path_febe,(FUNC1(RPOP_PFL) & 0xff) |
		    ((FUNC1(RPOP_PFM) & 0xff) << 8));
		FUNC0(corr_hcs,FUNC1(RACP_CHEC) & 0xff);
		FUNC0(uncorr_hcs,FUNC1(RACP_UHEC) & 0xff);
		FUNC0(rx_cells,(FUNC1(RACP_RCCL) & 0xff) |
		    ((FUNC1(RACP_RCC) & 0xff) << 8) |
		    ((FUNC1(RACP_RCCM) & 7) << 16));
		FUNC0(tx_cells,(FUNC1(TACP_TCCL) & 0xff) |
		    ((FUNC1(TACP_TCC) & 0xff) << 8) |
		    ((FUNC1(TACP_TCCM) & 7) << 16));
	}
	if (from_timer) FUNC3(&poll_timer,jiffies+HZ);
}