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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  wmi; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  WMI ; 
 int /*<<< orphan*/  WMI_REG_WRITE_CMDID ; 
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  const FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void *hw_priv, u32 val, u32 reg_offset)
{
	struct ath_hw *ah = (struct ath_hw *) hw_priv;
	struct ath_common *common = FUNC0(ah);
	struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) common->priv;
	const __be32 buf[2] = {
		FUNC3(reg_offset),
		FUNC3(val),
	};
	int r;

	r = FUNC1(priv->wmi, WMI_REG_WRITE_CMDID,
			  (u8 *) &buf, sizeof(buf),
			  (u8 *) &val, sizeof(val),
			  100);
	if (FUNC4(r)) {
		FUNC2(common, WMI, "REGISTER WRITE FAILED:(0x%04x, %d)\n",
			reg_offset, r);
	}
}