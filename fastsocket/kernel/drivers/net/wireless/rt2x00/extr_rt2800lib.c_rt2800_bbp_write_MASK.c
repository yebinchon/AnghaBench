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
typedef  scalar_t__ u32 ;
struct rt2x00_dev {int /*<<< orphan*/  csr_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBP_CSR_CFG ; 
 int /*<<< orphan*/  BBP_CSR_CFG_BBP_RW_MODE ; 
 int /*<<< orphan*/  BBP_CSR_CFG_BUSY ; 
 int /*<<< orphan*/  BBP_CSR_CFG_READ_CONTROL ; 
 int /*<<< orphan*/  BBP_CSR_CFG_REGNUM ; 
 int /*<<< orphan*/  BBP_CSR_CFG_VALUE ; 
 scalar_t__ FUNC0 (struct rt2x00_dev*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static void FUNC5(struct rt2x00_dev *rt2x00dev,
			     const unsigned int word, const u8 value)
{
	u32 reg;

	FUNC1(&rt2x00dev->csr_mutex);

	/*
	 * Wait until the BBP becomes available, afterwards we
	 * can safely write the new data into the register.
	 */
	if (FUNC0(rt2x00dev, &reg)) {
		reg = 0;
		FUNC4(&reg, BBP_CSR_CFG_VALUE, value);
		FUNC4(&reg, BBP_CSR_CFG_REGNUM, word);
		FUNC4(&reg, BBP_CSR_CFG_BUSY, 1);
		FUNC4(&reg, BBP_CSR_CFG_READ_CONTROL, 0);
		FUNC4(&reg, BBP_CSR_CFG_BBP_RW_MODE, 1);

		FUNC3(rt2x00dev, BBP_CSR_CFG, reg);
	}

	FUNC2(&rt2x00dev->csr_mutex);
}