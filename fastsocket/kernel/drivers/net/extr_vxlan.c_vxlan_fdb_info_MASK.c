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
struct vxlan_rdst {scalar_t__ remote_ip; scalar_t__ remote_port; scalar_t__ remote_vni; scalar_t__ remote_ifindex; } ;
struct nda_cacheinfo {scalar_t__ ndm_refcnt; void* ndm_updated; scalar_t__ ndm_confirmed; void* ndm_used; } ;
struct vxlan_fdb {scalar_t__ updated; scalar_t__ used; struct nda_cacheinfo eth_addr; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {scalar_t__ remote_vni; } ;
struct vxlan_dev {scalar_t__ dst_port; TYPE_2__ default_dst; TYPE_1__* dev; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct ndmsg {int /*<<< orphan*/  ndm_type; int /*<<< orphan*/  ndm_flags; int /*<<< orphan*/  ndm_ifindex; int /*<<< orphan*/  ndm_state; int /*<<< orphan*/  ndm_family; } ;
typedef  int /*<<< orphan*/  ci ;
struct TYPE_3__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BRIDGE ; 
 int /*<<< orphan*/  AF_INET ; 
 int EMSGSIZE ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  NDA_CACHEINFO ; 
 int /*<<< orphan*/  NDA_DST ; 
 int /*<<< orphan*/  NDA_IFINDEX ; 
 int /*<<< orphan*/  NDA_LLADDR ; 
 int /*<<< orphan*/  NDA_PORT ; 
 int /*<<< orphan*/  NDA_VNI ; 
 int RTM_GETNEIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nda_cacheinfo) ; 
 unsigned long jiffies ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ndmsg*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int,struct nda_cacheinfo*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct nlmsghdr*) ; 
 struct ndmsg* FUNC9 (struct nlmsghdr*) ; 
 int FUNC10 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct vxlan_dev *vxlan,
			  const struct vxlan_fdb *fdb,
			  u32 portid, u32 seq, int type, unsigned int flags,
			  const struct vxlan_rdst *rdst)
{
	unsigned long now = jiffies;
	struct nda_cacheinfo ci;
	struct nlmsghdr *nlh;
	struct ndmsg *ndm;
	bool send_ip, send_eth;

	nlh = FUNC11(skb, portid, seq, type, sizeof(*ndm), flags);
	if (nlh == NULL)
		return -EMSGSIZE;

	ndm = FUNC9(nlh);
	FUNC3(ndm, 0, sizeof(*ndm));

	send_eth = send_ip = true;

	if (type == RTM_GETNEIGH) {
		ndm->ndm_family	= AF_INET;
		send_ip = rdst->remote_ip != FUNC0(INADDR_ANY);
		send_eth = !FUNC1(fdb->eth_addr);
	} else
		ndm->ndm_family	= AF_BRIDGE;
	ndm->ndm_state = fdb->state;
	ndm->ndm_ifindex = vxlan->dev->ifindex;
	ndm->ndm_flags = fdb->flags;
	ndm->ndm_type = NDA_DST;

	if (send_eth && FUNC4(skb, NDA_LLADDR, ETH_ALEN, &fdb->eth_addr))
		goto nla_put_failure;

	if (send_ip && FUNC6(skb, NDA_DST, rdst->remote_ip))
		goto nla_put_failure;

	if (rdst->remote_port && rdst->remote_port != vxlan->dst_port &&
	    FUNC5(skb, NDA_PORT, rdst->remote_port))
		goto nla_put_failure;
	if (rdst->remote_vni != vxlan->default_dst.remote_vni &&
	    FUNC7(skb, NDA_VNI, rdst->remote_vni))
		goto nla_put_failure;
	if (rdst->remote_ifindex &&
	    FUNC7(skb, NDA_IFINDEX, rdst->remote_ifindex))
		goto nla_put_failure;

	ci.ndm_used	 = FUNC2(now - fdb->used);
	ci.ndm_confirmed = 0;
	ci.ndm_updated	 = FUNC2(now - fdb->updated);
	ci.ndm_refcnt	 = 0;

	if (FUNC4(skb, NDA_CACHEINFO, sizeof(ci), &ci))
		goto nla_put_failure;

	return FUNC10(skb, nlh);

nla_put_failure:
	FUNC8(skb, nlh);
	return -EMSGSIZE;
}