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
struct Port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RIO_DEBUG_DELAY ; 
 int /*<<< orphan*/  RIO_FAIL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC5(struct Port *PortP, int njiffies)
{
	FUNC0();

	FUNC4(RIO_DEBUG_DELAY, "delaying %d jiffies (ni)\n", njiffies);
	FUNC3(FUNC2(njiffies));
	FUNC1();
	return !RIO_FAIL;
}