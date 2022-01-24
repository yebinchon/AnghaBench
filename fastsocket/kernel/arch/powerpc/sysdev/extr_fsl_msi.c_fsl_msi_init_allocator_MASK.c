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
struct fsl_msi {int /*<<< orphan*/  bitmap; TYPE_1__* irqhost; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_MSI_IRQS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct fsl_msi *msi_data)
{
	int rc;

	rc = FUNC0(&msi_data->bitmap, NR_MSI_IRQS,
			      msi_data->irqhost->of_node);
	if (rc)
		return rc;

	rc = FUNC2(&msi_data->bitmap);
	if (rc < 0) {
		FUNC1(&msi_data->bitmap);
		return rc;
	}

	return 0;
}