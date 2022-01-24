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
typedef  int u8 ;
struct domain_device {int /*<<< orphan*/  sas_addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MI_REQ_SIZE ; 
 int /*<<< orphan*/  MI_RESP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int SMP_REPORT_MANUF_INFO ; 
 int SMP_RESP_FUNC_ACC ; 
 int* FUNC2 (int /*<<< orphan*/ ) ; 
 int* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct domain_device*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int FUNC6 (struct domain_device*,int*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct domain_device *dev)
{
	u8 *mi_req;
	u8 *mi_resp;
	int res;

	mi_req = FUNC2(MI_REQ_SIZE);
	if (!mi_req)
		return -ENOMEM;

	mi_resp = FUNC3(MI_RESP_SIZE);
	if (!mi_resp) {
		FUNC5(mi_req);
		return -ENOMEM;
	}

	mi_req[1] = SMP_REPORT_MANUF_INFO;

	res = FUNC6(dev, mi_req, MI_REQ_SIZE, mi_resp,MI_RESP_SIZE);
	if (res) {
		FUNC1("MI: ex %016llx failed:0x%x\n",
			    FUNC0(dev->sas_addr), res);
		goto out;
	} else if (mi_resp[2] != SMP_RESP_FUNC_ACC) {
		FUNC1("MI ex %016llx returned SMP result:0x%x\n",
			    FUNC0(dev->sas_addr), mi_resp[2]);
		goto out;
	}

	FUNC4(dev, mi_resp);
out:
	FUNC5(mi_req);
	FUNC5(mi_resp);
	return res;
}