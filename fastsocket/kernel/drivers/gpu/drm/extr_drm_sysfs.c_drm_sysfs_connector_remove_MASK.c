#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * parent; int /*<<< orphan*/  kobj; } ;
struct drm_connector {TYPE_1__ kdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * connector_attrs ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*) ; 
 int /*<<< orphan*/  edid_attr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC6(struct drm_connector *connector)
{
	int i;

	if (!connector->kdev.parent)
		return;
	FUNC1("removing \"%s\" from sysfs\n",
		  FUNC4(connector));

	for (i = 0; i < FUNC0(connector_attrs); i++)
		FUNC2(&connector->kdev, &connector_attrs[i]);
	FUNC5(&connector->kdev.kobj, &edid_attr);
	FUNC3(&connector->kdev);
	connector->kdev.parent = NULL;
}