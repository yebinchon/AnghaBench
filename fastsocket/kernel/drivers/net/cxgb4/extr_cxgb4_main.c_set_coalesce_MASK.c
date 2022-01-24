#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sge_rspq {int dummy; } ;
struct port_info {int first_qset; int nqsets; struct adapter* adapter; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct ethtool_coalesce {int /*<<< orphan*/  rx_max_coalesced_frames; int /*<<< orphan*/  rx_coalesce_usecs; } ;
struct TYPE_4__ {TYPE_1__* ethrxq; } ;
struct adapter {TYPE_2__ sge; } ;
struct TYPE_3__ {struct sge_rspq rspq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct port_info* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct adapter*,struct sge_rspq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct ethtool_coalesce *c)
{
	const struct port_info *pi = FUNC1(dev);
	struct adapter *adap = pi->adapter;
	struct sge_rspq *q;
	int i;
	int r = 0;

	for (i = pi->first_qset; i < pi->first_qset + pi->nqsets; i++) {
		q = &adap->sge.ethrxq[i].rspq;
		r = FUNC2(adap, q, c->rx_coalesce_usecs,
			c->rx_max_coalesced_frames);
		if (r) {
			FUNC0(&dev->dev, "failed to set coalesce %d\n", r);
			break;
		}
	}
	return r;
}