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
struct ar9170 {TYPE_1__* hw; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170_CMD_WREG ; 
 int FUNC0 (struct ar9170*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int) ; 

int FUNC4(struct ar9170 *ar, const u32 reg, const u32 val)
{
	const __le32 buf[2] = {
		FUNC1(reg),
		FUNC1(val),
	};
	int err;

	err = FUNC0(ar, CARL9170_CMD_WREG, sizeof(buf),
				(u8 *) buf, 0, NULL);
	if (err) {
		if (FUNC2()) {
			FUNC3(ar->hw->wiphy, "writing reg %#x "
				"(val %#x) failed (%d)\n", reg, val, err);
		}
	}
	return err;
}