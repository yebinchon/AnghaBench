#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cxgbi_device {int /*<<< orphan*/  list_head; TYPE_1__** ports; scalar_t__ nports; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int CXGBI_DBG_DEV ; 
 int /*<<< orphan*/  cdev_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct cxgbi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,struct cxgbi_device*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct cxgbi_device *cdev)
{
	FUNC2(1 << CXGBI_DBG_DEV,
		"cdev 0x%p, p# %u,%s.\n",
		cdev, cdev->nports, cdev->nports ? cdev->ports[0]->name : "");
	FUNC3(&cdev_mutex);
	FUNC1(&cdev->list_head);
	FUNC4(&cdev_mutex);
	FUNC0(cdev);
}