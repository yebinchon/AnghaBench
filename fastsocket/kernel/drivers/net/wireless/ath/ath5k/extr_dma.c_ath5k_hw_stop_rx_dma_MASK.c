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
struct ath5k_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_CR ; 
 int /*<<< orphan*/  AR5K_CR_RXD ; 
 int AR5K_CR_RXE ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_DMA ; 
 int EBUSY ; 
 int FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct ath5k_hw *ah)
{
	unsigned int i;

	FUNC2(ah, AR5K_CR_RXD, AR5K_CR);

	/*
	 * It may take some time to disable the DMA receive unit
	 */
	for (i = 1000; i > 0 &&
			(FUNC1(ah, AR5K_CR) & AR5K_CR_RXE) != 0;
			i--)
		FUNC3(100);

	if (!i)
		FUNC0(ah, ATH5K_DEBUG_DMA,
				"failed to stop RX DMA !\n");

	return i ? 0 : -EBUSY;
}