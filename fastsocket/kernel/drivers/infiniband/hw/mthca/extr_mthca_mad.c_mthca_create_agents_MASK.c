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
struct TYPE_2__ {int num_ports; } ;
struct mthca_dev {struct ib_mad_agent*** send_agent; TYPE_1__ limits; int /*<<< orphan*/  ib_dev; int /*<<< orphan*/  sm_lock; } ;
struct ib_mad_agent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_QPT_GSI ; 
 int /*<<< orphan*/  IB_QPT_SMI ; 
 scalar_t__ FUNC0 (struct ib_mad_agent*) ; 
 int FUNC1 (struct ib_mad_agent*) ; 
 struct ib_mad_agent* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_mad_agent*) ; 
 int /*<<< orphan*/  FUNC4 (struct mthca_dev*,char*,int) ; 
 int FUNC5 (struct mthca_dev*,int) ; 
 int /*<<< orphan*/  send_handler ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct mthca_dev *dev)
{
	struct ib_mad_agent *agent;
	int p, q;
	int ret;

	FUNC6(&dev->sm_lock);

	for (p = 0; p < dev->limits.num_ports; ++p)
		for (q = 0; q <= 1; ++q) {
			agent = FUNC2(&dev->ib_dev, p + 1,
						      q ? IB_QPT_GSI : IB_QPT_SMI,
						      NULL, 0, send_handler,
						      NULL, NULL);
			if (FUNC0(agent)) {
				ret = FUNC1(agent);
				goto err;
			}
			dev->send_agent[p][q] = agent;
		}


	for (p = 1; p <= dev->limits.num_ports; ++p) {
		ret = FUNC5(dev, p);
		if (ret) {
			FUNC4(dev, "Failed to obtain port %d rate."
				  " aborting.\n", p);
			goto err;
		}
	}

	return 0;

err:
	for (p = 0; p < dev->limits.num_ports; ++p)
		for (q = 0; q <= 1; ++q)
			if (dev->send_agent[p][q])
				FUNC3(dev->send_agent[p][q]);

	return ret;
}