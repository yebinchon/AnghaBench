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
struct cnic_ulp_ops {int (* cnic_get_stats ) (int /*<<< orphan*/ ) ;} ;
struct cnic_local {int /*<<< orphan*/ * ulp_handle; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  cnic_lock ; 
 struct cnic_ulp_ops** cnic_ulp_tbl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct cnic_dev *dev, int ulp_type)
{
	struct cnic_local *cp = dev->cnic_priv;
	struct cnic_ulp_ops *ulp_ops;
	int rc;

	FUNC0(&cnic_lock);
	ulp_ops = cnic_ulp_tbl[ulp_type];
	if (ulp_ops && ulp_ops->cnic_get_stats)
		rc = ulp_ops->cnic_get_stats(cp->ulp_handle[ulp_type]);
	else
		rc = -ENODEV;
	FUNC1(&cnic_lock);
	return rc;
}