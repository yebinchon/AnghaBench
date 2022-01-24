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
struct list_head {void* prev; void* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*) ; 

__attribute__((used)) static inline void FUNC1(struct list_head *entry)
{
	FUNC0(entry->prev, entry->next);
	entry->next = (void *)0xDEADBEEF;
	entry->prev = (void *)0xBEEFDEAD;
}