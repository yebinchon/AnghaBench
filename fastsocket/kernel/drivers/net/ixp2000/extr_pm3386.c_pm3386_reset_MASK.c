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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

void FUNC6(void)
{
	u8 mac[3][6];
	int secondary;

	secondary = FUNC3();

	/* Save programmed MAC addresses.  */
	FUNC1(0, mac[0]);
	FUNC1(1, mac[1]);
	if (secondary)
		FUNC1(2, mac[2]);

	/* Assert analog and digital reset.  */
	FUNC2(0, 0x002, 0x0060);
	if (secondary)
		FUNC2(1, 0x002, 0x0060);
	FUNC0(1);

	/* Deassert analog reset.  */
	FUNC2(0, 0x002, 0x0062);
	if (secondary)
		FUNC2(1, 0x002, 0x0062);
	FUNC0(10);

	/* Deassert digital reset.  */
	FUNC2(0, 0x002, 0x0063);
	if (secondary)
		FUNC2(1, 0x002, 0x0063);
	FUNC0(10);

	/* Restore programmed MAC addresses.  */
	FUNC5(0, mac[0]);
	FUNC5(1, mac[1]);
	if (secondary)
		FUNC5(2, mac[2]);

	/* Disable carrier on all ports.  */
	FUNC4(0, 0);
	FUNC4(1, 0);
	if (secondary)
		FUNC4(2, 0);
}