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
struct au8522_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  au8522_list_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct au8522_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct au8522_state *state)
{
	FUNC1(&au8522_list_mutex);
	if (state != NULL)
		FUNC0(state);
	FUNC2(&au8522_list_mutex);
}