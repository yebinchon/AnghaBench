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
typedef  int /*<<< orphan*/  u8 ;
struct vxlan_fdb {int state; scalar_t__ flags; int /*<<< orphan*/  hlist; int /*<<< orphan*/  const* eth_addr; int /*<<< orphan*/  remotes; void* used; void* updated; } ;
struct vxlan_dev {scalar_t__ addrmax; scalar_t__ addrcnt; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ __u8 ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int __u16 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EEXIST ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NLM_F_APPEND ; 
 int NLM_F_CREATE ; 
 int NLM_F_EXCL ; 
 int NLM_F_REPLACE ; 
 int /*<<< orphan*/  RTM_NEWNEIGH ; 
 struct vxlan_fdb* FUNC1 (struct vxlan_dev*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 void* jiffies ; 
 struct vxlan_fdb* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,...) ; 
 int FUNC8 (struct vxlan_fdb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vxlan_dev*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (struct vxlan_dev*,struct vxlan_fdb*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct vxlan_fdb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct vxlan_dev *vxlan,
			    const u8 *mac, __be32 ip,
			    __u16 state, __u16 flags,
			    __be16 port, __u32 vni, __u32 ifindex,
			    __u8 ndm_flags)
{
	struct vxlan_fdb *f;
	int notify = 0;

	f = FUNC1(vxlan, mac);
	if (f) {
		if (flags & NLM_F_EXCL) {
			FUNC7(vxlan->dev,
				   "lost race to create %pM\n", mac);
			return -EEXIST;
		}
		if (f->state != state) {
			f->state = state;
			f->updated = jiffies;
			notify = 1;
		}
		if (f->flags != ndm_flags) {
			f->flags = ndm_flags;
			f->updated = jiffies;
			notify = 1;
		}
		if ((flags & NLM_F_REPLACE)) {
			/* Only change unicasts */
			if (!(FUNC3(f->eth_addr) ||
			     FUNC4(f->eth_addr))) {
				int rc = FUNC11(f, ip, port, vni,
							   ifindex);

				if (rc < 0)
					return rc;
				notify |= rc;
			} else
				return -EOPNOTSUPP;
		}
		if ((flags & NLM_F_APPEND) &&
		    (FUNC3(f->eth_addr) ||
		     FUNC4(f->eth_addr))) {
			int rc = FUNC8(f, ip, port, vni, ifindex);

			if (rc < 0)
				return rc;
			notify |= rc;
		}
	} else {
		if (!(flags & NLM_F_CREATE))
			return -ENOENT;

		if (vxlan->addrmax && vxlan->addrcnt >= vxlan->addrmax)
			return -ENOSPC;

		/* Disallow replace to add a multicast entry */
		if ((flags & NLM_F_REPLACE) &&
		    (FUNC3(mac) || FUNC4(mac)))
			return -EOPNOTSUPP;

		FUNC7(vxlan->dev, "add %pM -> %pI4\n", mac, &ip);
		f = FUNC5(sizeof(*f), GFP_ATOMIC);
		if (!f)
			return -ENOMEM;

		notify = 1;
		f->state = state;
		f->flags = ndm_flags;
		f->updated = f->used = jiffies;
		FUNC0(&f->remotes);
		FUNC6(f->eth_addr, mac, ETH_ALEN);

		FUNC8(f, ip, port, vni, ifindex);

		++vxlan->addrcnt;
		FUNC2(&f->hlist,
				   FUNC9(vxlan, mac));
	}

	if (notify)
		FUNC10(vxlan, f, RTM_NEWNEIGH);

	return 0;
}