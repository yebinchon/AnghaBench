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
struct pmb_entry {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMB_NO_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(void *pmb)
{
	struct pmb_entry *pmbe = pmb;

	FUNC0(pmb, 0, sizeof(struct pmb_entry));

	pmbe->entry = PMB_NO_ENTRY;
}