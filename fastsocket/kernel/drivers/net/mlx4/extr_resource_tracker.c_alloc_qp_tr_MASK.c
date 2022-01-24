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
struct res_common {int res_id; int /*<<< orphan*/  state; } ;
struct res_qp {int local_qpn; struct res_common com; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  mcg_spl; int /*<<< orphan*/  mcg_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RES_QP_RESERVED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct res_qp* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct res_common *FUNC4(int id)
{
	struct res_qp *ret;

	ret = FUNC2(sizeof *ret, GFP_KERNEL);
	if (!ret)
		return NULL;

	ret->com.res_id = id;
	ret->com.state = RES_QP_RESERVED;
	ret->local_qpn = id;
	FUNC0(&ret->mcg_list);
	FUNC3(&ret->mcg_spl);
	FUNC1(&ret->ref_count, 0);

	return &ret->com;
}