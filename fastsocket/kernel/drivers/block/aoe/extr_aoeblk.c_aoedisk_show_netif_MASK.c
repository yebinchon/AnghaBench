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
struct net_device {int /*<<< orphan*/  name; } ;
struct gendisk {struct aoedev* private_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aoetgt {struct aoeif* ifs; } ;
struct aoeif {struct net_device* nd; } ;
struct aoedev {int ntargets; struct aoetgt** targets; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct net_device**) ; 
 int NAOEIFS ; 
 scalar_t__ PAGE_SIZE ; 
 struct gendisk* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device**,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*,scalar_t__,char*,...) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				  struct device_attribute *attr, char *page)
{
	struct gendisk *disk = FUNC1(dev);
	struct aoedev *d = disk->private_data;
	struct net_device *nds[8], **nd, **nnd, **ne;
	struct aoetgt **t, **te;
	struct aoeif *ifp, *e;
	char *p;

	FUNC2(nds, 0, sizeof nds);
	nd = nds;
	ne = nd + FUNC0(nds);
	t = d->targets;
	te = t + d->ntargets;
	for (; t < te && *t; t++) {
		ifp = (*t)->ifs;
		e = ifp + NAOEIFS;
		for (; ifp < e && ifp->nd; ifp++) {
			for (nnd = nds; nnd < nd; nnd++)
				if (*nnd == ifp->nd)
					break;
			if (nnd == nd && nd != ne)
				*nd++ = ifp->nd;
		}
	}

	ne = nd;
	nd = nds;
	if (*nd == NULL)
		return FUNC3(page, PAGE_SIZE, "none\n");
	for (p = page; nd < ne; nd++)
		p += FUNC3(p, PAGE_SIZE - (p-page), "%s%s",
			p == page ? "" : ",", (*nd)->name);
	p += FUNC3(p, PAGE_SIZE - (p-page), "\n");
	return p-page;
}