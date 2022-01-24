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
struct qlcnic_fw_dump {scalar_t__ clr; int /*<<< orphan*/ * data; TYPE_2__* tmpl_hdr; scalar_t__ size; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
struct ethtool_dump {int /*<<< orphan*/  flag; scalar_t__ len; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {int size; int /*<<< orphan*/  drv_cap_mask; } ;
struct TYPE_3__ {struct qlcnic_fw_dump fw_dump; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct qlcnic_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct net_device *netdev, struct ethtool_dump *dump,
		     void *buffer)
{
	int i, copy_sz;
	u32 *hdr_ptr;
	__le32 *data;
	struct qlcnic_adapter *adapter = FUNC4(netdev);
	struct qlcnic_fw_dump *fw_dump = &adapter->ahw->fw_dump;

	if (!fw_dump->tmpl_hdr) {
		FUNC2(netdev, "FW Dump not supported\n");
		return -ENOTSUPP;
	}

	if (!fw_dump->clr) {
		FUNC3(netdev, "Dump not available\n");
		return -EINVAL;
	}
	/* Copy template header first */
	copy_sz = fw_dump->tmpl_hdr->size;
	hdr_ptr = (u32 *) fw_dump->tmpl_hdr;
	data = buffer;
	for (i = 0; i < copy_sz/sizeof(u32); i++)
		*data++ = FUNC0(*hdr_ptr++);

	/* Copy captured dump data */
	FUNC1(buffer + copy_sz, fw_dump->data, fw_dump->size);
	dump->len = copy_sz + fw_dump->size;
	dump->flag = fw_dump->tmpl_hdr->drv_cap_mask;

	/* Free dump area once data has been captured */
	FUNC5(fw_dump->data);
	fw_dump->data = NULL;
	fw_dump->clr = 0;
	FUNC3(netdev, "extracted the FW dump Successfully\n");
	return 0;
}