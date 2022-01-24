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
struct vmballoon {int reset_required; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vmballoon*) ; 
 int /*<<< orphan*/  FUNC2 (struct vmballoon*) ; 
 scalar_t__ FUNC3 (struct vmballoon*) ; 

__attribute__((used)) static void FUNC4(struct vmballoon *b)
{
	/* free all pages, skipping monitor unlock */
	FUNC1(b);

	if (FUNC3(b)) {
		b->reset_required = false;
		if (!FUNC2(b))
			FUNC0("failed to send guest ID to the host\n");
	}
}