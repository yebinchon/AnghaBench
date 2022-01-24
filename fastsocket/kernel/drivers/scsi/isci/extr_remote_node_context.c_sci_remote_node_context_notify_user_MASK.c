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
struct sci_remote_node_context {int /*<<< orphan*/ * user_cookie; int /*<<< orphan*/  (* user_callback ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(
	struct sci_remote_node_context *rnc)
{
	if (rnc->user_callback != NULL) {
		(*rnc->user_callback)(rnc->user_cookie);

		rnc->user_callback = NULL;
		rnc->user_cookie = NULL;
	}
}