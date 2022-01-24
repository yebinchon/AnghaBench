#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct htc_beacon_config {scalar_t__ beacon_interval; } ;
struct ath_common {int dummy; } ;
struct TYPE_8__ {scalar_t__ bmiss_cnt; } ;
struct ath9k_htc_priv {TYPE_2__ cur_beacon_conf; TYPE_3__* ah; int /*<<< orphan*/  op_flags; } ;
typedef  enum ath9k_int { ____Placeholder_ath9k_int } ath9k_int ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_7__ {scalar_t__ sw_beacon_response_time; } ;
struct TYPE_9__ {TYPE_1__ config; } ;

/* Variables and functions */
 scalar_t__ ATH9K_HTC_MAX_BCN_VIF ; 
 int ATH9K_INT_SWBA ; 
 int /*<<< orphan*/  CONFIG ; 
 scalar_t__ DEFAULT_SWBA_RESPONSE ; 
 scalar_t__ FUDGE ; 
 scalar_t__ MIN_SWBA_RESPONSE ; 
 int /*<<< orphan*/  OP_ENABLE_BEACON ; 
 int /*<<< orphan*/  OP_TSF_RESET ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WMI_DISABLE_INTR_CMDID ; 
 int /*<<< orphan*/  WMI_ENABLE_INTR_CMDID ; 
 int /*<<< orphan*/  FUNC4 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_common*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct ath9k_htc_priv *priv,
				       struct htc_beacon_config *bss_conf)
{
	struct ath_common *common = FUNC6(priv->ah);
	enum ath9k_int imask = 0;
	u32 nexttbtt, intval, tsftu;
	__be32 htc_imask = 0;
	int ret __attribute__ ((unused));
	u8 cmd_rsp;
	u64 tsf;

	intval = bss_conf->beacon_interval;
	intval /= ATH9K_HTC_MAX_BCN_VIF;
	nexttbtt = intval;

	/*
	 * To reduce beacon misses under heavy TX load,
	 * set the beacon response time to a larger value.
	 */
	if (intval > DEFAULT_SWBA_RESPONSE)
		priv->ah->config.sw_beacon_response_time = DEFAULT_SWBA_RESPONSE;
	else
		priv->ah->config.sw_beacon_response_time = MIN_SWBA_RESPONSE;

	if (FUNC12(OP_TSF_RESET, &priv->op_flags)) {
		FUNC8(priv->ah);
		FUNC10(OP_TSF_RESET, &priv->op_flags);
	} else {
		/*
		 * Pull nexttbtt forward to reflect the current TSF.
		 */
		tsf = FUNC7(priv->ah);
		tsftu = FUNC0(tsf >> 32, tsf) + FUDGE;
		do {
			nexttbtt += intval;
		} while (nexttbtt < tsftu);
	}

	if (FUNC12(OP_ENABLE_BEACON, &priv->op_flags))
		imask |= ATH9K_INT_SWBA;

	FUNC9(common, CONFIG,
		"AP Beacon config, intval: %d, nexttbtt: %u, resp_time: %d imask: 0x%x\n",
		bss_conf->beacon_interval, nexttbtt,
		priv->ah->config.sw_beacon_response_time, imask);

	FUNC4(priv);

	FUNC2(WMI_DISABLE_INTR_CMDID);
	FUNC5(priv->ah, FUNC1(nexttbtt), FUNC1(intval));
	priv->cur_beacon_conf.bmiss_cnt = 0;
	htc_imask = FUNC11(imask);
	FUNC3(WMI_ENABLE_INTR_CMDID, &htc_imask);
}