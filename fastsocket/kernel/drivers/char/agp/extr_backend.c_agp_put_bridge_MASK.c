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
struct agp_bridge_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * agp_bridge ; 
 int /*<<< orphan*/  agp_bridges ; 
 int /*<<< orphan*/  FUNC0 (struct agp_bridge_data*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct agp_bridge_data *bridge)
{
        FUNC0(bridge);

        if (FUNC1(&agp_bridges))
                agp_bridge = NULL;
}