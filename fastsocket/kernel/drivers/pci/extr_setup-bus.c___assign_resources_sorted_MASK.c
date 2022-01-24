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
struct resource_list_x {int dummy; } ;
struct resource_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct resource_list_x*,struct resource_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct resource_list*,struct resource_list_x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct resource_list*) ; 
 int /*<<< orphan*/  resource_list ; 

__attribute__((used)) static void FUNC3(struct resource_list *head,
				 struct resource_list_x *add_head,
				 struct resource_list_x *fail_head)
{
	/* Satisfy the must-have resource requests */
	FUNC1(head, fail_head);

	/* Try to satisfy any additional nice-to-have resource
		requests */
	if (add_head)
		FUNC0(add_head, head);
	FUNC2(resource_list, head);
}