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
struct mtd_info {struct efx_mtd* priv; } ;
struct efx_mtd_partition {int /*<<< orphan*/  name; } ;
struct efx_mtd {int /*<<< orphan*/  name; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* sync ) (struct mtd_info*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mtd_info*) ; 
 struct efx_mtd_partition* FUNC2 (struct mtd_info*) ; 

__attribute__((used)) static void FUNC3(struct mtd_info *mtd)
{
	struct efx_mtd_partition *part = FUNC2(mtd);
	struct efx_mtd *efx_mtd = mtd->priv;
	int rc;

	rc = efx_mtd->ops->sync(mtd);
	if (rc)
		FUNC0("%s: %s sync failed (%d)\n",
		       part->name, efx_mtd->name, rc);
}