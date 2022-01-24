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
 int CCDC_ALAW ; 
 int CCDC_CULLING ; 
 int /*<<< orphan*/  CCDC_GAMMA_BITS_11_2 ; 
 int /*<<< orphan*/  CCDC_NO_CULLING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	int i;

	/* disable CCDC */
	FUNC0(0);
	/* set all registers to default value */
	for (i = 4; i <= 0x94; i += 4)
		FUNC1(0,  i);
	FUNC1(CCDC_NO_CULLING, CCDC_CULLING);
	FUNC1(CCDC_GAMMA_BITS_11_2, CCDC_ALAW);
}