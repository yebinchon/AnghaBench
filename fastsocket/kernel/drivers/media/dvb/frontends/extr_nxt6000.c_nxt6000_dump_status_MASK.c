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
struct nxt6000_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OFDM_COR_STAT ; 
 int /*<<< orphan*/  OFDM_SYR_STAT ; 
 int /*<<< orphan*/  OFDM_TPS_RCVD_3 ; 
 int /*<<< orphan*/  OFDM_TPS_RCVD_4 ; 
 int /*<<< orphan*/  RF_AGC_STATUS ; 
 int /*<<< orphan*/  RF_AGC_VAL_1 ; 
 int /*<<< orphan*/  RS_COR_STAT ; 
 int /*<<< orphan*/  VIT_SYNC_STATUS ; 
 int FUNC0 (struct nxt6000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(struct nxt6000_state *state)
{
	u8 val;

/*
	printk("RS_COR_STAT: 0x%02X\n", nxt6000_readreg(fe, RS_COR_STAT));
	printk("VIT_SYNC_STATUS: 0x%02X\n", nxt6000_readreg(fe, VIT_SYNC_STATUS));
	printk("OFDM_COR_STAT: 0x%02X\n", nxt6000_readreg(fe, OFDM_COR_STAT));
	printk("OFDM_SYR_STAT: 0x%02X\n", nxt6000_readreg(fe, OFDM_SYR_STAT));
	printk("OFDM_TPS_RCVD_1: 0x%02X\n", nxt6000_readreg(fe, OFDM_TPS_RCVD_1));
	printk("OFDM_TPS_RCVD_2: 0x%02X\n", nxt6000_readreg(fe, OFDM_TPS_RCVD_2));
	printk("OFDM_TPS_RCVD_3: 0x%02X\n", nxt6000_readreg(fe, OFDM_TPS_RCVD_3));
	printk("OFDM_TPS_RCVD_4: 0x%02X\n", nxt6000_readreg(fe, OFDM_TPS_RCVD_4));
	printk("OFDM_TPS_RESERVED_1: 0x%02X\n", nxt6000_readreg(fe, OFDM_TPS_RESERVED_1));
	printk("OFDM_TPS_RESERVED_2: 0x%02X\n", nxt6000_readreg(fe, OFDM_TPS_RESERVED_2));
*/
	FUNC1("NXT6000 status:");

	val = FUNC0(state, RS_COR_STAT);

	FUNC1(" DATA DESCR LOCK: %d,", val & 0x01);
	FUNC1(" DATA SYNC LOCK: %d,", (val >> 1) & 0x01);

	val = FUNC0(state, VIT_SYNC_STATUS);

	FUNC1(" VITERBI LOCK: %d,", (val >> 7) & 0x01);

	switch ((val >> 4) & 0x07) {

	case 0x00:
		FUNC1(" VITERBI CODERATE: 1/2,");
		break;

	case 0x01:
		FUNC1(" VITERBI CODERATE: 2/3,");
		break;

	case 0x02:
		FUNC1(" VITERBI CODERATE: 3/4,");
		break;

	case 0x03:
		FUNC1(" VITERBI CODERATE: 5/6,");
		break;

	case 0x04:
		FUNC1(" VITERBI CODERATE: 7/8,");
		break;

	default:
		FUNC1(" VITERBI CODERATE: Reserved,");

	}

	val = FUNC0(state, OFDM_COR_STAT);

	FUNC1(" CHCTrack: %d,", (val >> 7) & 0x01);
	FUNC1(" TPSLock: %d,", (val >> 6) & 0x01);
	FUNC1(" SYRLock: %d,", (val >> 5) & 0x01);
	FUNC1(" AGCLock: %d,", (val >> 4) & 0x01);

	switch (val & 0x0F) {

	case 0x00:
		FUNC1(" CoreState: IDLE,");
		break;

	case 0x02:
		FUNC1(" CoreState: WAIT_AGC,");
		break;

	case 0x03:
		FUNC1(" CoreState: WAIT_SYR,");
		break;

	case 0x04:
		FUNC1(" CoreState: WAIT_PPM,");
		break;

	case 0x01:
		FUNC1(" CoreState: WAIT_TRL,");
		break;

	case 0x05:
		FUNC1(" CoreState: WAIT_TPS,");
		break;

	case 0x06:
		FUNC1(" CoreState: MONITOR_TPS,");
		break;

	default:
		FUNC1(" CoreState: Reserved,");

	}

	val = FUNC0(state, OFDM_SYR_STAT);

	FUNC1(" SYRLock: %d,", (val >> 4) & 0x01);
	FUNC1(" SYRMode: %s,", (val >> 2) & 0x01 ? "8K" : "2K");

	switch ((val >> 4) & 0x03) {

	case 0x00:
		FUNC1(" SYRGuard: 1/32,");
		break;

	case 0x01:
		FUNC1(" SYRGuard: 1/16,");
		break;

	case 0x02:
		FUNC1(" SYRGuard: 1/8,");
		break;

	case 0x03:
		FUNC1(" SYRGuard: 1/4,");
		break;
	}

	val = FUNC0(state, OFDM_TPS_RCVD_3);

	switch ((val >> 4) & 0x07) {

	case 0x00:
		FUNC1(" TPSLP: 1/2,");
		break;

	case 0x01:
		FUNC1(" TPSLP: 2/3,");
		break;

	case 0x02:
		FUNC1(" TPSLP: 3/4,");
		break;

	case 0x03:
		FUNC1(" TPSLP: 5/6,");
		break;

	case 0x04:
		FUNC1(" TPSLP: 7/8,");
		break;

	default:
		FUNC1(" TPSLP: Reserved,");

	}

	switch (val & 0x07) {

	case 0x00:
		FUNC1(" TPSHP: 1/2,");
		break;

	case 0x01:
		FUNC1(" TPSHP: 2/3,");
		break;

	case 0x02:
		FUNC1(" TPSHP: 3/4,");
		break;

	case 0x03:
		FUNC1(" TPSHP: 5/6,");
		break;

	case 0x04:
		FUNC1(" TPSHP: 7/8,");
		break;

	default:
		FUNC1(" TPSHP: Reserved,");

	}

	val = FUNC0(state, OFDM_TPS_RCVD_4);

	FUNC1(" TPSMode: %s,", val & 0x01 ? "8K" : "2K");

	switch ((val >> 4) & 0x03) {

	case 0x00:
		FUNC1(" TPSGuard: 1/32,");
		break;

	case 0x01:
		FUNC1(" TPSGuard: 1/16,");
		break;

	case 0x02:
		FUNC1(" TPSGuard: 1/8,");
		break;

	case 0x03:
		FUNC1(" TPSGuard: 1/4,");
		break;

	}

	/* Strange magic required to gain access to RF_AGC_STATUS */
	FUNC0(state, RF_AGC_VAL_1);
	val = FUNC0(state, RF_AGC_STATUS);
	val = FUNC0(state, RF_AGC_STATUS);

	FUNC1(" RF AGC LOCK: %d,", (val >> 4) & 0x01);
	FUNC1("\n");
}