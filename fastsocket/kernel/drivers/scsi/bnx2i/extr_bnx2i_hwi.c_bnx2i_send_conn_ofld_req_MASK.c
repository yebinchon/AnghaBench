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
struct bnx2i_hba {int /*<<< orphan*/  cnic_dev_type; } ;
struct bnx2i_endpoint {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2I_NX2_DEV_57710 ; 
 int FUNC0 (struct bnx2i_hba*,struct bnx2i_endpoint*) ; 
 int FUNC1 (struct bnx2i_hba*,struct bnx2i_endpoint*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct bnx2i_hba *hba, struct bnx2i_endpoint *ep)
{
	int rc;

	if (FUNC2(BNX2I_NX2_DEV_57710, &hba->cnic_dev_type))
		rc = FUNC1(hba, ep);
	else
		rc = FUNC0(hba, ep);

	return rc;
}