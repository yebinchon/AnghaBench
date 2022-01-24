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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  ADAPTER_ADDRESS ; 
 int /*<<< orphan*/  AIRONET_INFO ; 
 int /*<<< orphan*/  AP_TX_POWER ; 
 int /*<<< orphan*/  ASSOCIATE ; 
 int /*<<< orphan*/  CARD_DISABLE ; 
 int /*<<< orphan*/  CCKM_INFO ; 
 int /*<<< orphan*/  CCX_VER_INFO ; 
 int /*<<< orphan*/  COUNTRY_INFO ; 
 int /*<<< orphan*/  DINO_CONFIG ; 
 int /*<<< orphan*/  EXT_SUPPORTED_RATES ; 
 int /*<<< orphan*/  FRAG_THRESHOLD ; 
 int /*<<< orphan*/  HOST_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPW_PRE_POWER_DOWN ; 
 int /*<<< orphan*/  MEASUREMENT ; 
 int /*<<< orphan*/  MULTICAST_ADDRESS ; 
 int /*<<< orphan*/  PORT_TYPE ; 
 int /*<<< orphan*/  POWER_CAPABILITY ; 
 int /*<<< orphan*/  POWER_DOWN ; 
 int /*<<< orphan*/  POWER_MODE ; 
 int /*<<< orphan*/  PRODUCTION_COMMAND ; 
 int /*<<< orphan*/  QOS_PARAMETERS ; 
 int /*<<< orphan*/  RETRY_LIMIT ; 
 int /*<<< orphan*/  RSN_CAPABILITIES ; 
 int /*<<< orphan*/  RTS_THRESHOLD ; 
 int /*<<< orphan*/  RX_KEY ; 
 int /*<<< orphan*/  SCAN_ABORT ; 
 int /*<<< orphan*/  SCAN_REQUEST ; 
 int /*<<< orphan*/  SCAN_REQUEST_EXT ; 
 int /*<<< orphan*/  SEED_NUMBER ; 
 int /*<<< orphan*/  SENSITIVITY_CALIB ; 
 int /*<<< orphan*/  SET_CALIBRATION ; 
 int /*<<< orphan*/  SSID ; 
 int /*<<< orphan*/  SUPPORTED_CHANNELS ; 
 int /*<<< orphan*/  SUPPORTED_RATES ; 
 int /*<<< orphan*/  SYSTEM_CONFIG ; 
 int /*<<< orphan*/  TGI_TX_KEY ; 
 int /*<<< orphan*/  TPC_REPORT ; 
 int /*<<< orphan*/  TX_FLUSH ; 
 int /*<<< orphan*/  TX_POWER ; 
 int /*<<< orphan*/  VAP_BEACON_TEMPLATE ; 
 int /*<<< orphan*/  VAP_CELL_PWR_LIMIT ; 
 int /*<<< orphan*/  VAP_CF_PARAM_SET ; 
 int /*<<< orphan*/  VAP_CHANNEL_SWITCH ; 
 int /*<<< orphan*/  VAP_DTIM_PERIOD ; 
 int /*<<< orphan*/  VAP_LOCAL_TX_PWR_CONSTRAINT ; 
 int /*<<< orphan*/  VAP_MANDATORY_CHANNELS ; 
 int /*<<< orphan*/  VAP_QUIET_INTERVALS ; 
 int /*<<< orphan*/  VAP_SET_BEACONING_STATE ; 
 int /*<<< orphan*/  WEP_KEY ; 
 int /*<<< orphan*/  WME_INFO ; 

__attribute__((used)) static char *FUNC1(u8 cmd)
{
	switch (cmd) {
		FUNC0(HOST_COMPLETE);
		FUNC0(POWER_DOWN);
		FUNC0(SYSTEM_CONFIG);
		FUNC0(MULTICAST_ADDRESS);
		FUNC0(SSID);
		FUNC0(ADAPTER_ADDRESS);
		FUNC0(PORT_TYPE);
		FUNC0(RTS_THRESHOLD);
		FUNC0(FRAG_THRESHOLD);
		FUNC0(POWER_MODE);
		FUNC0(WEP_KEY);
		FUNC0(TGI_TX_KEY);
		FUNC0(SCAN_REQUEST);
		FUNC0(SCAN_REQUEST_EXT);
		FUNC0(ASSOCIATE);
		FUNC0(SUPPORTED_RATES);
		FUNC0(SCAN_ABORT);
		FUNC0(TX_FLUSH);
		FUNC0(QOS_PARAMETERS);
		FUNC0(DINO_CONFIG);
		FUNC0(RSN_CAPABILITIES);
		FUNC0(RX_KEY);
		FUNC0(CARD_DISABLE);
		FUNC0(SEED_NUMBER);
		FUNC0(TX_POWER);
		FUNC0(COUNTRY_INFO);
		FUNC0(AIRONET_INFO);
		FUNC0(AP_TX_POWER);
		FUNC0(CCKM_INFO);
		FUNC0(CCX_VER_INFO);
		FUNC0(SET_CALIBRATION);
		FUNC0(SENSITIVITY_CALIB);
		FUNC0(RETRY_LIMIT);
		FUNC0(IPW_PRE_POWER_DOWN);
		FUNC0(VAP_BEACON_TEMPLATE);
		FUNC0(VAP_DTIM_PERIOD);
		FUNC0(EXT_SUPPORTED_RATES);
		FUNC0(VAP_LOCAL_TX_PWR_CONSTRAINT);
		FUNC0(VAP_QUIET_INTERVALS);
		FUNC0(VAP_CHANNEL_SWITCH);
		FUNC0(VAP_MANDATORY_CHANNELS);
		FUNC0(VAP_CELL_PWR_LIMIT);
		FUNC0(VAP_CF_PARAM_SET);
		FUNC0(VAP_SET_BEACONING_STATE);
		FUNC0(MEASUREMENT);
		FUNC0(POWER_CAPABILITY);
		FUNC0(SUPPORTED_CHANNELS);
		FUNC0(TPC_REPORT);
		FUNC0(WME_INFO);
		FUNC0(PRODUCTION_COMMAND);
	default:
		return "UNKNOWN";
	}
}