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
struct node_entry {int generation; scalar_t__ needs_probe; int /*<<< orphan*/  device; scalar_t__ in_limbo; struct hpsb_host* host; } ;
struct hpsb_host {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct node_entry*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct node_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct node_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct node_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static void FUNC6(struct hpsb_host *host, struct node_entry *ne,
			     int generation)
{
	struct device *dev;

	if (ne->host != host || ne->in_limbo)
		return;

	dev = FUNC0(&ne->device);
	if (!dev)
		return;

	FUNC1(ne, generation);

	/* If "needs_probe", then this is either a new or changed node we
	 * rescan totally. If the generation matches for an existing node
	 * (one that existed prior to the bus reset) we send update calls
	 * down to the drivers. Otherwise, this is a dead node and we
	 * suspend it. */
	if (ne->needs_probe)
		FUNC3(ne);
	else if (ne->generation == generation)
		FUNC4(ne);
	else
		FUNC2(ne);

	FUNC5(dev);
}