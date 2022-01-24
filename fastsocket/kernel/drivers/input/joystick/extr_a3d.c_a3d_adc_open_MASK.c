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
struct gameport {struct a3d* port_data; } ;
struct a3d {int /*<<< orphan*/  gameport; } ;

/* Variables and functions */
 int GAMEPORT_MODE_COOKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct gameport *gameport, int mode)
{
	struct a3d *a3d = gameport->port_data;

	if (mode != GAMEPORT_MODE_COOKED)
		return -1;

	FUNC0(a3d->gameport);
	return 0;
}