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
struct agp_bridge_data {int /*<<< orphan*/  current_memory_agp; int /*<<< orphan*/  agp_in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct agp_bridge_data* agp_bridge ; 
 int /*<<< orphan*/  agp_bridges ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct agp_bridge_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

struct agp_bridge_data *FUNC3(void)
{
	struct agp_bridge_data *bridge;

	bridge = FUNC1(sizeof(*bridge), GFP_KERNEL);
	if (!bridge)
		return NULL;

	FUNC0(&bridge->agp_in_use, 0);
	FUNC0(&bridge->current_memory_agp, 0);

	if (FUNC2(&agp_bridges))
		agp_bridge = bridge;

	return bridge;
}