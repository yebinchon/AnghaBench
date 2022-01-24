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
 int /*<<< orphan*/  __start___dbe_table ; 
 scalar_t__ __stop___dbe_table ; 
 struct exception_table_entry* FUNC0 (int /*<<< orphan*/ ,scalar_t__,unsigned long) ; 
 struct exception_table_entry* FUNC1 (unsigned long) ; 

__attribute__((used)) static const struct exception_table_entry *FUNC2(unsigned long addr)
{
	const struct exception_table_entry *e;

	e = FUNC0(__start___dbe_table, __stop___dbe_table - 1, addr);
	if (!e)
		e = FUNC1(addr);
	return e;
}