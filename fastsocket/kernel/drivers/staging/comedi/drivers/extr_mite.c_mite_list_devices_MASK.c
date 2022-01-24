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
struct mite_struct {scalar_t__ used; struct mite_struct* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mite_struct*) ; 
 struct mite_struct* mite_devices ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(void)
{
	struct mite_struct *mite, *next;

	FUNC1("Available NI device IDs:");
	if (mite_devices)
		for (mite = mite_devices; mite; mite = next) {
			next = mite->next;
			FUNC1(" 0x%04x", FUNC0(mite));
			if (mite->used)
				FUNC1("(used)");
		}
	FUNC1("\n");

}