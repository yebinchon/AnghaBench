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
typedef  int /*<<< orphan*/  u32 ;
struct aoetgt {int /*<<< orphan*/  addr; TYPE_1__* ifp; } ;
struct aoedev {int /*<<< orphan*/  aoeminor; int /*<<< orphan*/  aoemajor; } ;
struct aoe_hdr {int /*<<< orphan*/  tag; int /*<<< orphan*/  cmd; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; int /*<<< orphan*/  verfl; int /*<<< orphan*/  type; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_3__ {TYPE_2__* nd; } ;

/* Variables and functions */
 int /*<<< orphan*/  AOECMD_ATA ; 
 int /*<<< orphan*/  AOE_HVER ; 
 int /*<<< orphan*/  ETH_P_AOE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct aoedev*) ; 

__attribute__((used)) static u32
FUNC5(struct aoedev *d, struct aoetgt *t, struct aoe_hdr *h)
{
	u32 host_tag = FUNC4(d);

	FUNC3(h->src, t->ifp->nd->dev_addr, sizeof h->src);
	FUNC3(h->dst, t->addr, sizeof h->dst);
	h->type = FUNC0(ETH_P_AOE);
	h->verfl = AOE_HVER;
	h->major = FUNC1(d->aoemajor);
	h->minor = d->aoeminor;
	h->cmd = AOECMD_ATA;
	h->tag = FUNC2(host_tag);

	return host_tag;
}