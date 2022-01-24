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
struct device {int /*<<< orphan*/ * class; struct device* parent; } ;
struct unit_directory {struct device device; struct device unit_dev; int /*<<< orphan*/  id; } ;
struct node_entry {struct device device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct unit_directory*) ; 
 int /*<<< orphan*/  nodemgr_dev_template_ud ; 
 int /*<<< orphan*/  nodemgr_ud_class ; 

__attribute__((used)) static void FUNC8(struct node_entry *ne, 
	struct unit_directory *ud, struct device *parent)
{
	FUNC6(&ud->device, &nodemgr_dev_template_ud,
	       sizeof(ud->device));

	ud->device.parent = parent;

	FUNC2(&ud->device, "%s-%u", FUNC1(&ne->device), ud->id);

	ud->unit_dev.parent = &ud->device;
	ud->unit_dev.class = &nodemgr_ud_class;
	FUNC2(&ud->unit_dev, "%s-%u", FUNC1(&ne->device), ud->id);

	if (FUNC3(&ud->device))
		goto fail_devreg;
	if (FUNC3(&ud->unit_dev))
		goto fail_classdevreg;
	FUNC5(&ud->device);

	FUNC7(ud);

	return;

fail_classdevreg:
	FUNC4(&ud->device);
fail_devreg:
	FUNC0("Failed to create unit %s", FUNC1(&ud->device));
}