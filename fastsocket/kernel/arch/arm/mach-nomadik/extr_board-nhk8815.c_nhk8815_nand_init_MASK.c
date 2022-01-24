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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
	/* FSMC setup for nand chip select (8-bit nand in 8815NHK) */
	FUNC4(0x0000000E, FUNC1(0));
	FUNC4(0x000D0A00, FUNC2(0));
	FUNC4(0x00100A00, FUNC0(0));

	/* enable access to the chip select area */
	FUNC4(FUNC3(FUNC1(0)) | 0x04, FUNC1(0));

	return 0;
}