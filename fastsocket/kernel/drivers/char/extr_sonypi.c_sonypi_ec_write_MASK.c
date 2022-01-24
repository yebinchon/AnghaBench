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

/* Variables and functions */
 int /*<<< orphan*/  ITERATIONS_LONG ; 
 scalar_t__ SONYPI_ACPI_ACTIVE ; 
 int /*<<< orphan*/  SONYPI_CST_IOPORT ; 
 int /*<<< orphan*/  SONYPI_DATA_IOPORT ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(u8 addr, u8 value)
{
#ifdef CONFIG_ACPI
	if (SONYPI_ACPI_ACTIVE)
		return ec_write(addr, value);
#endif
	FUNC3(1, FUNC1(SONYPI_CST_IOPORT) & 3, ITERATIONS_LONG);
	FUNC2(0x81, SONYPI_CST_IOPORT);
	FUNC3(0, FUNC1(SONYPI_CST_IOPORT) & 2, ITERATIONS_LONG);
	FUNC2(addr, SONYPI_DATA_IOPORT);
	FUNC3(0, FUNC1(SONYPI_CST_IOPORT) & 2, ITERATIONS_LONG);
	FUNC2(value, SONYPI_DATA_IOPORT);
	FUNC3(0, FUNC1(SONYPI_CST_IOPORT) & 2, ITERATIONS_LONG);
	return 0;
}