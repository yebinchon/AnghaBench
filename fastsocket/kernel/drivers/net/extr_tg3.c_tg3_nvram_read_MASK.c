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
struct tg3 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NVRAM ; 
 int /*<<< orphan*/  NVRAM_ADDR ; 
 int /*<<< orphan*/  NVRAM_ADDR_MSK ; 
 int NVRAM_CMD_DONE ; 
 int NVRAM_CMD_FIRST ; 
 int NVRAM_CMD_GO ; 
 int NVRAM_CMD_LAST ; 
 int NVRAM_CMD_RD ; 
 int /*<<< orphan*/  NVRAM_RDDATA ; 
 int /*<<< orphan*/  FUNC0 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tg3*,int) ; 
 int FUNC4 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC5 (struct tg3*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct tg3*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct tg3 *tp, u32 offset, u32 *val)
{
	int ret;

	if (!FUNC2(tp, NVRAM))
		return FUNC6(tp, offset, val);

	offset = FUNC5(tp, offset);

	if (offset > NVRAM_ADDR_MSK)
		return -EINVAL;

	ret = FUNC4(tp);
	if (ret)
		return ret;

	FUNC1(tp);

	FUNC9(NVRAM_ADDR, offset);
	ret = FUNC3(tp, NVRAM_CMD_RD | NVRAM_CMD_GO |
		NVRAM_CMD_FIRST | NVRAM_CMD_LAST | NVRAM_CMD_DONE);

	if (ret == 0)
		*val = FUNC8(NVRAM_RDDATA);

	FUNC0(tp);

	FUNC7(tp);

	return ret;
}