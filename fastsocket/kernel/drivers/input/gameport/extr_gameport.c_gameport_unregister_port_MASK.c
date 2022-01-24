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
struct gameport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC1 (struct gameport*) ; 
 int /*<<< orphan*/  gameport_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct gameport *gameport)
{
	FUNC2(&gameport_mutex);
	FUNC1(gameport);
	FUNC0(gameport);
	FUNC3(&gameport_mutex);
}