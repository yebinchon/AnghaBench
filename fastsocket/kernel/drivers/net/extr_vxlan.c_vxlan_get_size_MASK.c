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
struct net_device {int dummy; } ;
struct ifla_vxlan_port_range {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 size_t FUNC0 (int) ; 

__attribute__((used)) static size_t FUNC1(const struct net_device *dev)
{

	return FUNC0(sizeof(__u32)) +	/* IFLA_VXLAN_ID */
		FUNC0(sizeof(__be32)) +/* IFLA_VXLAN_GROUP */
		FUNC0(sizeof(__u32)) +	/* IFLA_VXLAN_LINK */
		FUNC0(sizeof(__be32))+	/* IFLA_VXLAN_LOCAL */
		FUNC0(sizeof(__u8)) +	/* IFLA_VXLAN_TTL */
		FUNC0(sizeof(__u8)) +	/* IFLA_VXLAN_TOS */
		FUNC0(sizeof(__u8)) +	/* IFLA_VXLAN_LEARNING */
		FUNC0(sizeof(__u8)) +	/* IFLA_VXLAN_PROXY */
		FUNC0(sizeof(__u8)) +	/* IFLA_VXLAN_RSC */
		FUNC0(sizeof(__u8)) +	/* IFLA_VXLAN_L2MISS */
		FUNC0(sizeof(__u8)) +	/* IFLA_VXLAN_L3MISS */
		FUNC0(sizeof(__u32)) +	/* IFLA_VXLAN_AGEING */
		FUNC0(sizeof(__u32)) +	/* IFLA_VXLAN_LIMIT */
		FUNC0(sizeof(struct ifla_vxlan_port_range)) +
		FUNC0(sizeof(__be16))+ /* IFLA_VXLAN_PORT */
		0;
}