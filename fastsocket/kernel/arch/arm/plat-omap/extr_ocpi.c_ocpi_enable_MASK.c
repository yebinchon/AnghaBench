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
 int ENODEV ; 
 int /*<<< orphan*/  OCPI_PROT ; 
 int /*<<< orphan*/  OCPI_SEC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

int FUNC3(void)
{
	unsigned int val;

	if (!FUNC0())
		return -ENODEV;

	/* Enable access for OHCI in OCPI */
	val = FUNC1(OCPI_PROT);
	val &= ~0xff;
	//val &= (1 << 0);	/* Allow access only to EMIFS */
	FUNC2(val, OCPI_PROT);

	val = FUNC1(OCPI_SEC);
	val &= ~0xff;
	FUNC2(val, OCPI_SEC);

	return 0;
}