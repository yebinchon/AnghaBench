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
typedef  int u64 ;
struct niu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMAC_CTRL_TYPE ; 
 int /*<<< orphan*/  BMAC_MAX_FRAME ; 
 int /*<<< orphan*/  BMAC_MIN_FRAME ; 
 int /*<<< orphan*/  BMAC_PREAMBLE_SIZE ; 
 int /*<<< orphan*/  BTXMAC_CONFIG ; 
 int BTXMAC_CONFIG_ENABLE ; 
 int BTXMAC_CONFIG_FCS_DISABLE ; 
 int /*<<< orphan*/  BTXMAC_STATUS_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct niu *np, u64 min, u64 max)
{
	u64 val;

	FUNC1(BMAC_MIN_FRAME, min);
	FUNC1(BMAC_MAX_FRAME, max);

	FUNC1(BTXMAC_STATUS_MASK, ~(u64)0);
	FUNC1(BMAC_CTRL_TYPE, 0x8808);
	FUNC1(BMAC_PREAMBLE_SIZE, 7);

	val = FUNC0(BTXMAC_CONFIG);
	val &= ~(BTXMAC_CONFIG_FCS_DISABLE |
		 BTXMAC_CONFIG_ENABLE);
	FUNC1(BTXMAC_CONFIG, val);
}