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
struct sci_remote_node_context {void* user_cookie; int /*<<< orphan*/  user_callback; int /*<<< orphan*/  destination_state; } ;
struct isci_host {int /*<<< orphan*/  eventq; } ;
typedef  int /*<<< orphan*/  scics_sds_remote_node_context_callback ;

/* Variables and functions */
 int /*<<< orphan*/  RNC_DEST_FINAL ; 
 struct isci_host* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sci_remote_node_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(
	struct sci_remote_node_context *sci_rnc,
	scics_sds_remote_node_context_callback callback,
	void *callback_parameter)
{
	struct isci_host *ihost = FUNC0(FUNC1(sci_rnc));

	sci_rnc->destination_state = RNC_DEST_FINAL;
	sci_rnc->user_callback     = callback;
	sci_rnc->user_cookie       = callback_parameter;

	FUNC2(&ihost->eventq);
}