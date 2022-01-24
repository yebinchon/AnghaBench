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

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  _PAGE_TYPE_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int /*<<< orphan*/ ,int) ; 

void FUNC2(unsigned long *table)
{
	FUNC0(table, _PAGE_TYPE_EMPTY, PAGE_SIZE/4);
	FUNC1(table + 256, 0, PAGE_SIZE/4);
	FUNC0(table + 512, _PAGE_TYPE_EMPTY, PAGE_SIZE/4);
	FUNC1(table + 768, 0, PAGE_SIZE/4);
}