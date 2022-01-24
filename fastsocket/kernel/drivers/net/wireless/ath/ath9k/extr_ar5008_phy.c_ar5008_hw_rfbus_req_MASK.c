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
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AH_WAIT_TIMEOUT ; 
 int /*<<< orphan*/  AR_PHY_RFBUS_GRANT ; 
 int /*<<< orphan*/  AR_PHY_RFBUS_GRANT_EN ; 
 int /*<<< orphan*/  AR_PHY_RFBUS_REQ ; 
 int /*<<< orphan*/  AR_PHY_RFBUS_REQ_EN ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct ath_hw *ah)
{
	FUNC0(ah, AR_PHY_RFBUS_REQ, AR_PHY_RFBUS_REQ_EN);
	return FUNC1(ah, AR_PHY_RFBUS_GRANT, AR_PHY_RFBUS_GRANT_EN,
			   AR_PHY_RFBUS_GRANT_EN, AH_WAIT_TIMEOUT);
}