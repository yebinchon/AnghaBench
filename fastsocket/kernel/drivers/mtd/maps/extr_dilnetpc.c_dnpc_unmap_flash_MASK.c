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

/* Variables and functions */
 int /*<<< orphan*/  CSC_CR ; 
 int /*<<< orphan*/  PCC_AWER_B ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(void)
{
	/* - enable PC Card indexed register space */
	FUNC2(CSC_CR, FUNC0(CSC_CR) | 0x2);

	/* disable memory window 1 */
	FUNC3(PCC_AWER_B, FUNC1(PCC_AWER_B) & ~0x02);

	/* now disable PC Card indexed register space again */
	FUNC2(CSC_CR, FUNC0(CSC_CR) & ~0x2);
}