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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct isci_remote_device {int dummy; } ;
struct isci_host {struct isci_remote_device** device_table; int /*<<< orphan*/  available_remote_nodes; } ;
typedef  enum sci_status { ____Placeholder_sci_status } sci_status ;

/* Variables and functions */
 size_t SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX ; 
 int SCI_FAILURE_INSUFFICIENT_RESOURCES ; 
 int SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct isci_remote_device*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

enum sci_status FUNC2(struct isci_host *ihost,
							    struct isci_remote_device *idev,
							    u16 *node_id)
{
	u16 node_index;
	u32 remote_node_count = FUNC0(idev);

	node_index = FUNC1(
		&ihost->available_remote_nodes, remote_node_count
		);

	if (node_index != SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX) {
		ihost->device_table[node_index] = idev;

		*node_id = node_index;

		return SCI_SUCCESS;
	}

	return SCI_FAILURE_INSUFFICIENT_RESOURCES;
}