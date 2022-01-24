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
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int ENTRIES_PER_WORD ; 
 unsigned int ENTRIES_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,void*) ; 

__attribute__((used)) static void FUNC2(void *addr, unsigned b, unsigned val)
{
	__le64 *words_le = addr;
	__le64 *w_le = words_le + (b >> ENTRIES_SHIFT);

	b = (b & (ENTRIES_PER_WORD - 1)) << 1;

	if (val & 2)
		FUNC1(b, (void *) w_le);
	else
		FUNC0(b, (void *) w_le);

	if (val & 1)
		FUNC1(b + 1, (void *) w_le);
	else
		FUNC0(b + 1, (void *) w_le);
}