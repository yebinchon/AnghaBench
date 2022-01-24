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
typedef  int u32 ;
typedef  int u16 ;
struct sci_remote_node_table {int dummy; } ;

/* Variables and functions */
 int SCU_STP_REMOTE_NODE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct sci_remote_node_table*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sci_remote_node_table*,int,int) ; 

__attribute__((used)) static void FUNC2(
	struct sci_remote_node_table *remote_node_table,
	u16 remote_node_index)
{
	u32 group_index;

	group_index = remote_node_index / SCU_STP_REMOTE_NODE_COUNT;

	FUNC1(
		remote_node_table, 2, group_index
		);

	FUNC0(remote_node_table, group_index);
}