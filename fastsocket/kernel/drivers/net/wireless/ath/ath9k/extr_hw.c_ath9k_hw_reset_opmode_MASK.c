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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ ack_6mb; } ;
struct ath_hw {int sta_id1_defaults; int /*<<< orphan*/  opmode; TYPE_1__ config; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_DEF_ANTENNA ; 
 int /*<<< orphan*/  AR_ISR ; 
 int /*<<< orphan*/  AR_RSSI_THR ; 
 int /*<<< orphan*/  AR_STA_ID1 ; 
 int AR_STA_ID1_ACKCTS_6MB ; 
 int AR_STA_ID1_RTS_USE_DEF ; 
 int /*<<< orphan*/  AR_STA_ID1_SADH_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int INIT_RSSI_THR ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 struct ath_common* FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_common*) ; 

__attribute__((used)) static void FUNC8(struct ath_hw *ah,
				  u32 macStaId1, u32 saveDefAntenna)
{
	struct ath_common *common = FUNC4(ah);

	FUNC0(ah);

	FUNC2(ah, AR_STA_ID1, macStaId1
		  | AR_STA_ID1_RTS_USE_DEF
		  | (ah->config.ack_6mb ? AR_STA_ID1_ACKCTS_6MB : 0)
		  | ah->sta_id1_defaults,
		  ~AR_STA_ID1_SADH_MASK);
	FUNC7(common);
	FUNC3(ah, AR_DEF_ANTENNA, saveDefAntenna);
	FUNC6(ah);
	FUNC3(ah, AR_ISR, ~0);
	FUNC3(ah, AR_RSSI_THR, INIT_RSSI_THR);

	FUNC1(ah);

	FUNC5(ah, ah->opmode);
}