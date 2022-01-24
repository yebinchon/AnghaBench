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
struct qlcnic_bc_trans {struct qlcnic_bc_trans* rsp_hdr; struct qlcnic_bc_trans* req_hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qlcnic_bc_trans*) ; 

__attribute__((used)) static void FUNC1(struct qlcnic_bc_trans *trans)
{
	if (!trans)
		return;
	FUNC0(trans->req_hdr);
	FUNC0(trans->rsp_hdr);
	FUNC0(trans);
}