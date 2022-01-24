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
struct zfcp_gpn_ft {int /*<<< orphan*/  sg_resp; int /*<<< orphan*/  sg_req; } ;
struct ct_iu_gpn_ft_req {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpn_ft_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct zfcp_gpn_ft*) ; 
 struct ct_iu_gpn_ft_req* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct zfcp_gpn_ft* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ct_iu_gpn_ft_req*,int) ; 
 TYPE_1__ zfcp_data ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_gpn_ft*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct zfcp_gpn_ft *FUNC6(int buf_num)
{
	struct zfcp_gpn_ft *gpn_ft;
	struct ct_iu_gpn_ft_req *req;

	gpn_ft = FUNC2(sizeof(*gpn_ft), GFP_KERNEL);
	if (!gpn_ft)
		return NULL;

	req = FUNC1(zfcp_data.gpn_ft_cache, GFP_KERNEL);
	if (!req) {
		FUNC0(gpn_ft);
		gpn_ft = NULL;
		goto out;
	}
	FUNC3(&gpn_ft->sg_req, req, sizeof(*req));

	if (FUNC5(gpn_ft->sg_resp, buf_num)) {
		FUNC4(gpn_ft, buf_num);
		gpn_ft = NULL;
	}
out:
	return gpn_ft;
}