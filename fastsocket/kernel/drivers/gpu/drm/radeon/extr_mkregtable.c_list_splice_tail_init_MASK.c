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
struct list_head {int /*<<< orphan*/  prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*,int /*<<< orphan*/ ,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 

__attribute__((used)) static inline void FUNC3(struct list_head *list,
					 struct list_head *head)
{
	if (!FUNC2(list)) {
		FUNC1(list, head->prev, head);
		FUNC0(list);
	}
}