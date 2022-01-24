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
struct TYPE_2__ {int /*<<< orphan*/  change_count; } ;
struct smp_resp {int result; TYPE_1__ rg; } ;
typedef  struct smp_resp u8 ;
struct domain_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  RG_REQ_SIZE ; 
 int /*<<< orphan*/  RG_RESP_SIZE ; 
 struct smp_resp SMP_REPORT_GENERAL ; 
 int SMP_RESP_FUNC_ACC ; 
 struct smp_resp* FUNC0 (int /*<<< orphan*/ ) ; 
 struct smp_resp* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct smp_resp*) ; 
 int FUNC4 (struct domain_device*,struct smp_resp*,int /*<<< orphan*/ ,struct smp_resp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct domain_device *dev, int *ecc)
{
	int res;
	u8  *rg_req;
	struct smp_resp  *rg_resp;

	rg_req = FUNC0(RG_REQ_SIZE);
	if (!rg_req)
		return -ENOMEM;

	rg_resp = FUNC1(RG_RESP_SIZE);
	if (!rg_resp) {
		FUNC3(rg_req);
		return -ENOMEM;
	}

	rg_req[1] = SMP_REPORT_GENERAL;

	res = FUNC4(dev, rg_req, RG_REQ_SIZE, rg_resp,
			       RG_RESP_SIZE);
	if (res)
		goto out;
	if (rg_resp->result != SMP_RESP_FUNC_ACC) {
		res = rg_resp->result;
		goto out;
	}

	*ecc = FUNC2(rg_resp->rg.change_count);
out:
	FUNC3(rg_resp);
	FUNC3(rg_req);
	return res;
}