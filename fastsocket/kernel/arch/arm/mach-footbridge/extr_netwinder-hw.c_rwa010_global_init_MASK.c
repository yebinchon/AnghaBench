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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static inline void FUNC3(void)
{
	FUNC0(6, 2);	// Assign a card no = 2

	FUNC1("Card no = %d\n", FUNC2(0x203));

	/* disable the modem section of the chip */
	FUNC0(7, 3);
	FUNC0(0x30, 0);

	/* disable the cdrom section of the chip */
	FUNC0(7, 4);
	FUNC0(0x30, 0);

	/* disable the MPU-401 section of the chip */
	FUNC0(7, 2);
	FUNC0(0x30, 0);
}