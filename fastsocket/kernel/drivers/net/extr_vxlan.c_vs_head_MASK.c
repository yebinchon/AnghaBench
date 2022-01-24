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
struct vxlan_net {struct hlist_head* sock_list; } ;
struct net {int dummy; } ;
struct hlist_head {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_HASH_BITS ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vxlan_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vxlan_net_id ; 

__attribute__((used)) static inline struct hlist_head *FUNC3(struct net *net, __be16 port)
{
	struct vxlan_net *vn = FUNC1(net, vxlan_net_id);

	return &vn->sock_list[FUNC0(FUNC2(port), PORT_HASH_BITS)];
}