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
struct cnic_ulp_ops {int /*<<< orphan*/  (* cnic_init ) (struct cnic_dev*) ;} ;
struct cnic_local {int /*<<< orphan*/ * ulp_flags; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;

/* Variables and functions */
 int MAX_CNIC_ULP_TYPE_EXT ; 
 int /*<<< orphan*/  ULP_F_INIT ; 
 int /*<<< orphan*/  cnic_lock ; 
 struct cnic_ulp_ops** cnic_ulp_tbl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cnic_ulp_ops*) ; 
 int /*<<< orphan*/  FUNC5 (struct cnic_ulp_ops*) ; 

__attribute__((used)) static void FUNC6(struct cnic_dev *dev)
{
	int i;
	struct cnic_local *cp = dev->cnic_priv;

	for (i = 0; i < MAX_CNIC_ULP_TYPE_EXT; i++) {
		struct cnic_ulp_ops *ulp_ops;

		FUNC0(&cnic_lock);
		ulp_ops = cnic_ulp_tbl[i];
		if (!ulp_ops || !ulp_ops->cnic_init) {
			FUNC1(&cnic_lock);
			continue;
		}
		FUNC4(ulp_ops);
		FUNC1(&cnic_lock);

		if (!FUNC3(ULP_F_INIT, &cp->ulp_flags[i]))
			ulp_ops->cnic_init(dev);

		FUNC5(ulp_ops);
	}
}