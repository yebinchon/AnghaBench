#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct register_write {int dummy; } ;
struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;
struct ath9k_htc_priv {TYPE_1__* wmi; } ;
typedef  int /*<<< orphan*/  rsp_status ;
struct TYPE_2__ {int multi_write_idx; int /*<<< orphan*/  multi_write_mutex; int /*<<< orphan*/  multi_write; int /*<<< orphan*/  mwrite_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  WMI ; 
 int /*<<< orphan*/  WMI_REG_WRITE_CMDID ; 
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(void *hw_priv)
{
	struct ath_hw *ah = (struct ath_hw *) hw_priv;
	struct ath_common *common = FUNC0(ah);
	struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) common->priv;
	u32 rsp_status;
	int r;

	FUNC3(&priv->wmi->mwrite_cnt);

	FUNC4(&priv->wmi->multi_write_mutex);

	if (priv->wmi->multi_write_idx) {
		r = FUNC1(priv->wmi, WMI_REG_WRITE_CMDID,
			  (u8 *) &priv->wmi->multi_write,
			  sizeof(struct register_write) * priv->wmi->multi_write_idx,
			  (u8 *) &rsp_status, sizeof(rsp_status),
			  100);
		if (FUNC6(r)) {
			FUNC2(common, WMI,
				"REGISTER WRITE FAILED, multi len: %d\n",
				priv->wmi->multi_write_idx);
		}
		priv->wmi->multi_write_idx = 0;
	}

	FUNC5(&priv->wmi->multi_write_mutex);
}