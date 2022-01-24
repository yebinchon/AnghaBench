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
struct aztech {int /*<<< orphan*/  io; int /*<<< orphan*/  curvol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  radio_wait_time ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct aztech *az)
{
	FUNC1 (radio_wait_time);
	FUNC0(128 + 2 + FUNC2(az->curvol), az->io);
	FUNC0(128 + 64 + 2 + FUNC2(az->curvol), az->io);
}