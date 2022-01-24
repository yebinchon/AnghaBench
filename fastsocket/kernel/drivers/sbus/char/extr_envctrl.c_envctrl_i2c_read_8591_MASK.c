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
 scalar_t__ PCF8584_DATA ; 
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char) ; 
 scalar_t__ i2c ; 
 unsigned char FUNC5 (scalar_t__) ; 

__attribute__((used)) static unsigned char FUNC6(unsigned char addr, unsigned char port)
{
	/* Send address. */
	FUNC3(addr);

	/* Setup port to read. */
	FUNC4(port);
	FUNC2();

	/* Read port. */
	FUNC0(addr);

	/* Do a single byte read and send stop. */
	FUNC1();
	FUNC2();

	return FUNC5(i2c + PCF8584_DATA);
}