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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct vxlan_dev {int /*<<< orphan*/  hash_lock; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct ndmsg {int ndm_state; int /*<<< orphan*/  ndm_flags; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EINVAL ; 
 size_t NDA_DST ; 
 int NUD_PERMANENT ; 
 int NUD_REACHABLE ; 
 struct vxlan_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct vxlan_dev*,unsigned char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nlattr**,struct vxlan_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ndmsg *ndm, struct nlattr *tb[],
			 struct net_device *dev,
			 const unsigned char *addr, u16 flags)
{
	struct vxlan_dev *vxlan = FUNC0(dev);
	/* struct net *net = dev_net(vxlan->dev); */
	__be32 ip;
	__be16 port;
	u32 vni, ifindex;
	int err;

	if (!(ndm->ndm_state & (NUD_PERMANENT|NUD_REACHABLE))) {
		FUNC1("RTM_NEWNEIGH with invalid state %#x\n",
			ndm->ndm_state);
		return -EINVAL;
	}

	if (tb[NDA_DST] == NULL)
		return -EINVAL;

	err = FUNC5(tb, vxlan, &ip, &port, &vni, &ifindex);
	if (err)
		return err;

	FUNC2(&vxlan->hash_lock);
	err = FUNC4(vxlan, addr, ip, ndm->ndm_state, flags,
			       port, vni, ifindex, ndm->ndm_flags);
	FUNC3(&vxlan->hash_lock);

	return err;
}