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
struct ib_ud_header {int /*<<< orphan*/  immediate_data; scalar_t__ immediate_present; int /*<<< orphan*/  deth; int /*<<< orphan*/  bth; int /*<<< orphan*/  grh; scalar_t__ grh_present; int /*<<< orphan*/  vlan; scalar_t__ vlan_present; int /*<<< orphan*/  eth; scalar_t__ eth_present; int /*<<< orphan*/  lrh; scalar_t__ lrh_present; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IB_BTH_BYTES ; 
 scalar_t__ IB_DETH_BYTES ; 
 scalar_t__ IB_ETH_BYTES ; 
 scalar_t__ IB_GRH_BYTES ; 
 scalar_t__ IB_LRH_BYTES ; 
 scalar_t__ IB_VLAN_BYTES ; 
 int /*<<< orphan*/  bth_table ; 
 int /*<<< orphan*/  deth_table ; 
 int /*<<< orphan*/  eth_table ; 
 int /*<<< orphan*/  grh_table ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  lrh_table ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  vlan_table ; 

int FUNC3(struct ib_ud_header *header,
		      void                *buf)
{
	int len = 0;

	if (header->lrh_present) {
		FUNC1(lrh_table, FUNC0(lrh_table),
			&header->lrh, buf + len);
		len += IB_LRH_BYTES;
	}
	if (header->eth_present) {
		FUNC1(eth_table, FUNC0(eth_table),
			&header->eth, buf + len);
		len += IB_ETH_BYTES;
	}
	if (header->vlan_present) {
		FUNC1(vlan_table, FUNC0(vlan_table),
			&header->vlan, buf + len);
		len += IB_VLAN_BYTES;
	}
	if (header->grh_present) {
		FUNC1(grh_table, FUNC0(grh_table),
			&header->grh, buf + len);
		len += IB_GRH_BYTES;
	}

	FUNC1(bth_table, FUNC0(bth_table),
		&header->bth, buf + len);
	len += IB_BTH_BYTES;

	FUNC1(deth_table, FUNC0(deth_table),
		&header->deth, buf + len);
	len += IB_DETH_BYTES;

	if (header->immediate_present) {
		FUNC2(buf + len, &header->immediate_data, sizeof header->immediate_data);
		len += sizeof header->immediate_data;
	}

	return len;
}