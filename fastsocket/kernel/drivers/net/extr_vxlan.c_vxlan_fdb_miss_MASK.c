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
struct vxlan_fdb {int /*<<< orphan*/  eth_addr; int /*<<< orphan*/  remotes; int /*<<< orphan*/  state; } ;
struct vxlan_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NUD_STALE ; 
 int /*<<< orphan*/  RTM_GETNEIGH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vxlan_dev*,struct vxlan_fdb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct vxlan_dev *vxlan, const u8 eth_addr[ETH_ALEN])
{
	struct vxlan_fdb f = {
		.state = NUD_STALE,
	};

	FUNC0(&f.remotes);
	FUNC1(f.eth_addr, eth_addr, ETH_ALEN);

	FUNC2(vxlan, &f, RTM_GETNEIGH);
}