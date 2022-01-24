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
struct rt2x00_dev {int /*<<< orphan*/  csr_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_CSR4 ; 
 int /*<<< orphan*/  PHY_CSR4_BUSY ; 
 int /*<<< orphan*/  PHY_CSR4_IF_SELECT ; 
 int /*<<< orphan*/  PHY_CSR4_NUMBER_OF_BITS ; 
 int /*<<< orphan*/  PHY_CSR4_VALUE ; 
 int /*<<< orphan*/  RF2527 ; 
 int /*<<< orphan*/  RF5225 ; 
 scalar_t__ FUNC0 (struct rt2x00_dev*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,unsigned int const,int const) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct rt2x00_dev *rt2x00dev,
			     const unsigned int word, const u32 value)
{
	u32 reg;

	FUNC1(&rt2x00dev->csr_mutex);

	/*
	 * Wait until the RF becomes available, afterwards we
	 * can safely write the new data into the register.
	 */
	if (FUNC0(rt2x00dev, &reg)) {
		reg = 0;
		FUNC5(&reg, PHY_CSR4_VALUE, value);
		/*
		 * RF5225 and RF2527 contain 21 bits per RF register value,
		 * all others contain 20 bits.
		 */
		FUNC5(&reg, PHY_CSR4_NUMBER_OF_BITS,
				   20 + (FUNC3(rt2x00dev, RF5225) ||
					 FUNC3(rt2x00dev, RF2527)));
		FUNC5(&reg, PHY_CSR4_IF_SELECT, 0);
		FUNC5(&reg, PHY_CSR4_BUSY, 1);

		FUNC6(rt2x00dev, PHY_CSR4, reg);
		FUNC4(rt2x00dev, word, value);
	}

	FUNC2(&rt2x00dev->csr_mutex);
}