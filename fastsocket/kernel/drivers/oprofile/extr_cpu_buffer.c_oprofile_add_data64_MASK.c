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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct op_entry {int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int FUNC0 (struct op_entry*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct op_entry*) ; 

int FUNC2(struct op_entry *entry, u64 val)
{
	if (!entry->event)
		return 0;
	if (FUNC1(entry) < 2)
		/*
		 * the function returns 0 to indicate a too small
		 * buffer, even if there is some space left
		 */
		return 0;
	if (!FUNC0(entry, (u32)val))
		return 0;
	return FUNC0(entry, (u32)(val >> 32));
}