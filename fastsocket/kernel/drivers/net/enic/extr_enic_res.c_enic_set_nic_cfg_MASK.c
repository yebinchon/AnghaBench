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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct enic {int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_NIC_CFG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct enic *enic, u8 rss_default_cpu, u8 rss_hash_type,
	u8 rss_hash_bits, u8 rss_base_cpu, u8 rss_enable, u8 tso_ipid_split_en,
	u8 ig_vlan_strip_en)
{
	u64 a0, a1;
	u32 nic_cfg;
	int wait = 1000;

	FUNC1(&nic_cfg, rss_default_cpu,
		rss_hash_type, rss_hash_bits, rss_base_cpu,
		rss_enable, tso_ipid_split_en, ig_vlan_strip_en);

	a0 = nic_cfg;
	a1 = 0;

	return FUNC0(enic->vdev, CMD_NIC_CFG, &a0, &a1, wait);
}