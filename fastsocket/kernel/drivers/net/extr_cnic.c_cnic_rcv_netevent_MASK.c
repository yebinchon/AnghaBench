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
typedef  int /*<<< orphan*/  u16 ;
struct cnic_ulp_ops {int /*<<< orphan*/  (* indicate_netevent ) (void*,unsigned long,int /*<<< orphan*/ ) ;} ;
struct cnic_local {void** ulp_handle; int /*<<< orphan*/ * ulp_ops; } ;

/* Variables and functions */
 int MAX_CNIC_ULP_TYPE ; 
 struct cnic_ulp_ops* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct cnic_local *cp, unsigned long event,
			      u16 vlan_id)
{
	int if_type;

	FUNC1();
	for (if_type = 0; if_type < MAX_CNIC_ULP_TYPE; if_type++) {
		struct cnic_ulp_ops *ulp_ops;
		void *ctx;

		ulp_ops = FUNC0(cp->ulp_ops[if_type]);
		if (!ulp_ops || !ulp_ops->indicate_netevent)
			continue;

		ctx = cp->ulp_handle[if_type];

		ulp_ops->indicate_netevent(ctx, event, vlan_id);
	}
	FUNC2();
}