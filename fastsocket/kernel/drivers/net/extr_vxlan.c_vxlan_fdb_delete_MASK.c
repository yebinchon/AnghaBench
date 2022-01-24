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
struct vxlan_rdst {int /*<<< orphan*/  rcu; int /*<<< orphan*/  list; } ;
struct vxlan_fdb {int /*<<< orphan*/  remotes; } ;
struct vxlan_dev {int /*<<< orphan*/  hash_lock; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct ndmsg {int dummy; } ;
typedef  scalar_t__ __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct vxlan_dev* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vxlan_dev*,struct vxlan_fdb*) ; 
 struct vxlan_rdst* FUNC8 (struct vxlan_fdb*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vxlan_fdb_free_rdst ; 
 int FUNC9 (struct nlattr**,struct vxlan_dev*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct vxlan_fdb* FUNC10 (struct vxlan_dev*,unsigned char const*) ; 

__attribute__((used)) static int FUNC11(struct ndmsg *ndm, struct nlattr *tb[],
			    struct net_device *dev,
			    const unsigned char *addr)
{
	struct vxlan_dev *vxlan = FUNC4(dev);
	struct vxlan_fdb *f;
	struct vxlan_rdst *rd = NULL;
	__be32 ip;
	__be16 port;
	u32 vni, ifindex;
	int err;

	err = FUNC9(tb, vxlan, &ip, &port, &vni, &ifindex);
	if (err)
		return err;

	err = -ENOENT;

	FUNC5(&vxlan->hash_lock);
	f = FUNC10(vxlan, addr);
	if (!f)
		goto out;

	if (ip != FUNC1(INADDR_ANY)) {
		rd = FUNC8(f, ip, port, vni, ifindex);
		if (!rd)
			goto out;
	}

	err = 0;

	/* remove a destination if it's not the only one on the list,
	 * otherwise destroy the fdb entry
	 */
	if (rd && !FUNC3(&f->remotes)) {
		FUNC2(&rd->list);
		FUNC0(&rd->rcu, vxlan_fdb_free_rdst);
		goto out;
	}

	FUNC7(vxlan, f);

out:
	FUNC6(&vxlan->hash_lock);

	return err;
}