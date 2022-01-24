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
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct wmi_event_swba {int /*<<< orphan*/  tsf; } ;
struct ath_common {int dummy; } ;
struct TYPE_2__ {int beacon_interval; } ;
struct ath9k_htc_priv {TYPE_1__ cur_beacon_conf; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int ATH9K_HTC_MAX_BCN_VIF ; 
 int /*<<< orphan*/  BEACON ; 
 int FUNC0 (int,int) ; 
 struct ath_common* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ath9k_htc_priv *priv,
				  struct wmi_event_swba *swba)
{
	struct ath_common *common = FUNC1(priv->ah);
	u64 tsf;
	u32 tsftu;
	u16 intval;
	int slot;

	intval = priv->cur_beacon_conf.beacon_interval;

	tsf = FUNC3(swba->tsf);
	tsftu = FUNC0(tsf >> 32, tsf);
	slot = ((tsftu % intval) * ATH9K_HTC_MAX_BCN_VIF) / intval;
	slot = ATH9K_HTC_MAX_BCN_VIF - slot - 1;

	FUNC2(common, BEACON,
		"Choose slot: %d, tsf: %llu, tsftu: %u, intval: %u\n",
		slot, tsf, tsftu, intval);

	return slot;
}