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
typedef  int /*<<< orphan*/  u32 ;
struct ath_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ AR9300_OTP_BASE ; 
 scalar_t__ AR9300_OTP_READ_DATA ; 
 int /*<<< orphan*/  AR9300_OTP_STATUS ; 
 int /*<<< orphan*/  AR9300_OTP_STATUS_TYPE ; 
 int /*<<< orphan*/  AR9300_OTP_STATUS_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC2(struct ath_hw *ah, int addr, u32 *data)
{
	FUNC0(ah, AR9300_OTP_BASE + (4 * addr));

	if (!FUNC1(ah, AR9300_OTP_STATUS, AR9300_OTP_STATUS_TYPE,
			   AR9300_OTP_STATUS_VALID, 1000))
		return false;

	*data = FUNC0(ah, AR9300_OTP_READ_DATA);
	return true;
}