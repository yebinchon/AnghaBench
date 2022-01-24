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
struct pnp_dev_node_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pnp_dev_node_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

int FUNC2(struct pnp_dev_node_info *data)
{
	int status = FUNC0(data);

	if (status)
		FUNC1("dev_node_info", status);
	return status;
}