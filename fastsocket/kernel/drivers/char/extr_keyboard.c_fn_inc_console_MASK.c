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
struct vc_data {int dummy; } ;

/* Variables and functions */
 int MAX_NR_CONSOLES ; 
 int fg_console ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int want_console ; 

__attribute__((used)) static void FUNC2(struct vc_data *vc)
{
	int i, cur = fg_console;

	/* Currently switching?  Queue this next switch relative to that. */
	if (want_console != -1)
		cur = want_console;

	for (i = cur+1; i != cur; i++) {
		if (i == MAX_NR_CONSOLES)
			i = 0;
		if (FUNC1(i))
			break;
	}
	FUNC0(i);
}