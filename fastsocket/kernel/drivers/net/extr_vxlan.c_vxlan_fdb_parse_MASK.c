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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  remote_vni; } ;
struct vxlan_dev {TYPE_1__ default_dst; int /*<<< orphan*/  dst_port; int /*<<< orphan*/  dev; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 size_t NDA_DST ; 
 size_t NDA_IFINDEX ; 
 size_t NDA_PORT ; 
 size_t NDA_VNI ; 
 struct net_device* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 int FUNC7 (struct nlattr*) ; 

__attribute__((used)) static int FUNC8(struct nlattr *tb[], struct vxlan_dev *vxlan,
			   __be32 *ip, __be16 *port, u32 *vni, u32 *ifindex)
{
	struct net *net = FUNC1(vxlan->dev);

	if (tb[NDA_DST]) {
		if (FUNC7(tb[NDA_DST]) != sizeof(__be32))
			return -EAFNOSUPPORT;

		*ip = FUNC5(tb[NDA_DST]);
	} else {
		*ip = FUNC3(INADDR_ANY);
	}

	if (tb[NDA_PORT]) {
		if (FUNC7(tb[NDA_PORT]) != sizeof(__be16))
			return -EINVAL;
		*port = FUNC4(tb[NDA_PORT]);
	} else {
		*port = vxlan->dst_port;
	}

	if (tb[NDA_VNI]) {
		if (FUNC7(tb[NDA_VNI]) != sizeof(u32))
			return -EINVAL;
		*vni = FUNC6(tb[NDA_VNI]);
	} else {
		*vni = vxlan->default_dst.remote_vni;
	}

	if (tb[NDA_IFINDEX]) {
		struct net_device *tdev;

		if (FUNC7(tb[NDA_IFINDEX]) != sizeof(u32))
			return -EINVAL;
		*ifindex = FUNC6(tb[NDA_IFINDEX]);
		tdev = FUNC0(net, *ifindex);
		if (!tdev)
			return -EADDRNOTAVAIL;
		FUNC2(tdev);
	} else {
		*ifindex = 0;
	}

	return 0;
}