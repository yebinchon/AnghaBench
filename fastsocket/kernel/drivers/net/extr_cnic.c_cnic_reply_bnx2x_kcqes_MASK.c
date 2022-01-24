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
typedef  int /*<<< orphan*/  u32 ;
struct kcqe {int dummy; } ;
struct cnic_ulp_ops {int /*<<< orphan*/  (* indicate_kcqes ) (int /*<<< orphan*/ ,struct kcqe**,int /*<<< orphan*/ ) ;} ;
struct cnic_local {int /*<<< orphan*/ * ulp_handle; int /*<<< orphan*/ * ulp_ops; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cnic_ulp_ops*) ; 
 struct cnic_ulp_ops* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct kcqe**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct cnic_dev *dev, int ulp_type,
				   struct kcqe *cqes[], u32 num_cqes)
{
	struct cnic_local *cp = dev->cnic_priv;
	struct cnic_ulp_ops *ulp_ops;

	FUNC2();
	ulp_ops = FUNC1(cp->ulp_ops[ulp_type]);
	if (FUNC0(ulp_ops)) {
		ulp_ops->indicate_kcqes(cp->ulp_handle[ulp_type],
					  cqes, num_cqes);
	}
	FUNC3();
}