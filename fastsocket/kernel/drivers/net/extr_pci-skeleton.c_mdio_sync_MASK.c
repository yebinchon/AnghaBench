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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MDIO_CLK ; 
 int MDIO_WRITE1 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 

__attribute__((used)) static void FUNC3 (void *mdio_addr)
{
	int i;

	FUNC0 ("ENTER\n");

	for (i = 32; i >= 0; i--) {
		FUNC2 (MDIO_WRITE1, mdio_addr);
		FUNC1 ();
		FUNC2 (MDIO_WRITE1 | MDIO_CLK, mdio_addr);
		FUNC1 ();
	}

	FUNC0 ("EXIT\n");
}