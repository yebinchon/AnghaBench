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
struct exception_table_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cmp_ex ; 
 int /*<<< orphan*/  FUNC0 (struct exception_table_entry*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  swap_ex ; 

void FUNC1(struct exception_table_entry *start,
		  struct exception_table_entry *finish)
{
	FUNC0(start, finish - start, sizeof(struct exception_table_entry),
	     cmp_ex, swap_ex);
}