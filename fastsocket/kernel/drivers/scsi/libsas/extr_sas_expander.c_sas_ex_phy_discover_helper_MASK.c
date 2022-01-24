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
struct discover_resp {int /*<<< orphan*/  attached_sas_addr; } ;
struct smp_resp {struct discover_resp disc; } ;
struct domain_device {int /*<<< orphan*/  sas_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCOVER_REQ_SIZE ; 
 int /*<<< orphan*/  DISCOVER_RESP_SIZE ; 
 int /*<<< orphan*/  SAS_ADDR_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct domain_device*,int,int*) ; 
 int FUNC3 (struct domain_device*,int*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct domain_device *dev, u8 *disc_req,
				      u8 *disc_resp, int single)
{
	struct discover_resp *dr;
	int res;

	disc_req[9] = single;

	res = FUNC3(dev, disc_req, DISCOVER_REQ_SIZE,
			       disc_resp, DISCOVER_RESP_SIZE);
	if (res)
		return res;
	dr = &((struct smp_resp *)disc_resp)->disc;
	if (FUNC0(dev->sas_addr, dr->attached_sas_addr, SAS_ADDR_SIZE) == 0) {
		FUNC1("Found loopback topology, just ignore it!\n");
		return 0;
	}
	FUNC2(dev, single, disc_resp);
	return 0;
}