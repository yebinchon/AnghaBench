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
typedef  int u32 ;
struct saa7146_dev {int dummy; } ;
struct budget {int /*<<< orphan*/  debilock; struct saa7146_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBI_AD ; 
 int /*<<< orphan*/  DEBI_COMMAND ; 
 int /*<<< orphan*/  DEBI_CONFIG ; 
 int /*<<< orphan*/  DEBI_PAGE ; 
 int /*<<< orphan*/  MC2 ; 
 int FUNC0 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct saa7146_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7146_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct budget *budget, u32 config, int addr, int count,
			  int uselocks, int nobusyloop)
{
	struct saa7146_dev *saa = budget->dev;
	int result = 0;
	unsigned long flags = 0;

	if (count > 4 || count <= 0)
		return 0;

	if (uselocks)
		FUNC3(&budget->debilock, flags);

	if ((result = FUNC1(saa, nobusyloop)) < 0) {
		if (uselocks)
			FUNC4(&budget->debilock, flags);
		return result;
	}

	FUNC2(saa, DEBI_COMMAND, (count << 17) | 0x10000 | (addr & 0xffff));
	FUNC2(saa, DEBI_CONFIG, config);
	FUNC2(saa, DEBI_PAGE, 0);
	FUNC2(saa, MC2, (2 << 16) | 2);

	if ((result = FUNC1(saa, nobusyloop)) < 0) {
		if (uselocks)
			FUNC4(&budget->debilock, flags);
		return result;
	}

	result = FUNC0(saa, DEBI_AD);
	result &= (0xffffffffUL >> ((4 - count) * 8));

	if (uselocks)
		FUNC4(&budget->debilock, flags);

	return result;
}