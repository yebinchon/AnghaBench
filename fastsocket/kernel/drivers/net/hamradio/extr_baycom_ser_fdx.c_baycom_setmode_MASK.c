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
struct baycom_state {unsigned int baud; int opt_dcd; } ;

/* Variables and functions */
 unsigned int FUNC0 (char const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct baycom_state *bc, const char *modestr)
{
	unsigned int baud;

	if (!FUNC2(modestr, "ser", 3)) {
		baud = FUNC0(modestr+3, NULL, 10);
		if (baud >= 3 && baud <= 48)
			bc->baud = baud*100;
	}
	if (FUNC1(modestr, '*'))
		bc->opt_dcd = 0;
	else if (FUNC1(modestr, '+'))
		bc->opt_dcd = -1;
	else
		bc->opt_dcd = 1;
	return 0;
}