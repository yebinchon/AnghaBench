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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBF_CFG ; 
 int /*<<< orphan*/  TXRXQ_PCNT ; 
 int /*<<< orphan*/  TXRXQ_PCNT_TX0Q ; 
 int /*<<< orphan*/  TXRXQ_PCNT_TX1Q ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct rt2x00_dev *rt2x00dev)
{
	unsigned int i;
	u32 reg;

	FUNC2(rt2x00dev, TXRXQ_PCNT, &reg);
	if (FUNC0(reg, TXRXQ_PCNT_TX0Q)) {
		FUNC1(rt2x00dev, "TX HW queue 0 timed out, invoke forced kick\n");

		FUNC3(rt2x00dev, PBF_CFG, 0xf40012);

		for (i = 0; i < 10; i++) {
			FUNC5(10);
			if (!FUNC0(reg, TXRXQ_PCNT_TX0Q))
				break;
		}

		FUNC3(rt2x00dev, PBF_CFG, 0xf40006);
	}

	FUNC2(rt2x00dev, TXRXQ_PCNT, &reg);
	if (FUNC0(reg, TXRXQ_PCNT_TX1Q)) {
		FUNC1(rt2x00dev, "TX HW queue 1 timed out, invoke forced kick\n");

		FUNC3(rt2x00dev, PBF_CFG, 0xf4000a);

		for (i = 0; i < 10; i++) {
			FUNC5(10);
			if (!FUNC0(reg, TXRXQ_PCNT_TX1Q))
				break;
		}

		FUNC3(rt2x00dev, PBF_CFG, 0xf40006);
	}

	FUNC4(rt2x00dev);
}