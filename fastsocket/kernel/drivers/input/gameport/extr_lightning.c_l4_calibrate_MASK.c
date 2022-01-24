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
struct l4 {int /*<<< orphan*/  port; } ;
struct gameport {struct l4* port_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC2(struct gameport *gameport, int *axes, int *max)
{
	int i, t;
	int cal[4];
	struct l4 *l4 = gameport->port_data;

	if (FUNC0(l4->port, cal))
		return -1;

	for (i = 0; i < 4; i++) {
		t = (max[i] * cal[i]) / 200;
		t = (t < 1) ? 1 : ((t > 255) ? 255 : t);
		axes[i] = (axes[i] < 0) ? -1 : (axes[i] * cal[i]) / t;
		axes[i] = (axes[i] > 252) ? 252 : axes[i];
		cal[i] = t;
	}

	if (FUNC1(l4->port, cal))
		return -1;

	return 0;
}