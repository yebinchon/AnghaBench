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
struct TYPE_2__ {int change_count; } ;
struct smp_resp {TYPE_1__ disc; } ;
struct domain_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCOVER_RESP_SIZE ; 
 int ENOMEM ; 
 struct smp_resp* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct smp_resp*) ; 
 int FUNC2 (struct domain_device*,int,struct smp_resp*) ; 

__attribute__((used)) static int FUNC3(struct domain_device *dev,
				    int phy_id, int *pcc)
{
	int res;
	struct smp_resp *disc_resp;

	disc_resp = FUNC0(DISCOVER_RESP_SIZE);
	if (!disc_resp)
		return -ENOMEM;

	res = FUNC2(dev, phy_id, disc_resp);
	if (!res)
		*pcc = disc_resp->disc.change_count;

	FUNC1(disc_resp);
	return res;
}