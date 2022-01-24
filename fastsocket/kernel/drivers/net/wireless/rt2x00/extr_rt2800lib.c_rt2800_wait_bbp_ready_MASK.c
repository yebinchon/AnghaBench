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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  H2M_BBP_AGENT ; 
 int /*<<< orphan*/  H2M_MAILBOX_CSR ; 
 unsigned int REGISTER_BUSY_COUNT ; 
 int /*<<< orphan*/  REGISTER_BUSY_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rt2x00_dev *rt2x00dev)
{
	unsigned int i;
	u8 value;

	/*
	 * BBP was enabled after firmware was loaded,
	 * but we need to reactivate it now.
	 */
	FUNC2(rt2x00dev, H2M_BBP_AGENT, 0);
	FUNC2(rt2x00dev, H2M_MAILBOX_CSR, 0);
	FUNC0(1);

	for (i = 0; i < REGISTER_BUSY_COUNT; i++) {
		FUNC1(rt2x00dev, 0, &value);
		if ((value != 0xff) && (value != 0x00))
			return 0;
		FUNC4(REGISTER_BUSY_DELAY);
	}

	FUNC3(rt2x00dev, "BBP register access failed, aborting\n");
	return -EACCES;
}