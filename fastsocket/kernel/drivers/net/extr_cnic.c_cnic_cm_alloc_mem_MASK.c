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
struct cnic_sock {int dummy; } ;
struct cnic_local {int /*<<< orphan*/  csk_port_tbl; int /*<<< orphan*/  csk_tbl; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNIC_LOCAL_PORT_MIN ; 
 int /*<<< orphan*/  CNIC_LOCAL_PORT_RANGE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_CM_SK_TBL_SZ ; 
 int /*<<< orphan*/  FUNC0 (struct cnic_dev*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct cnic_dev *dev)
{
	struct cnic_local *cp = dev->cnic_priv;
	u32 port_id;

	cp->csk_tbl = FUNC2(sizeof(struct cnic_sock) * MAX_CM_SK_TBL_SZ,
			      GFP_KERNEL);
	if (!cp->csk_tbl)
		return -ENOMEM;

	port_id = FUNC3();
	port_id %= CNIC_LOCAL_PORT_RANGE;
	if (FUNC1(&cp->csk_port_tbl, CNIC_LOCAL_PORT_RANGE,
			     CNIC_LOCAL_PORT_MIN, port_id)) {
		FUNC0(dev);
		return -ENOMEM;
	}
	return 0;
}