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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct uni_table_desc {int findex; int entry_size; } ;
struct uni_data_desc {int findex; int size; } ;
struct netxen_adapter {size_t file_prd_off; TYPE_1__* fw; } ;
typedef  int __le32 ;
struct TYPE_2__ {size_t size; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int EINVAL ; 
 int NX_UNI_BOOTLD_IDX_OFF ; 
 int /*<<< orphan*/  NX_UNI_DIR_SECT_BOOTLD ; 
 int FUNC0 (int) ; 
 struct uni_table_desc* FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct netxen_adapter *adapter)
{
	struct uni_table_desc *tab_desc;
	struct uni_data_desc *descr;
	const u8 *unirom = adapter->fw->data;
	__le32 idx = FUNC0(*((int *)&unirom[adapter->file_prd_off] +
				NX_UNI_BOOTLD_IDX_OFF));
	u32 offs;
	u32 tab_size;
	u32 data_size;

	tab_desc = FUNC1(unirom, NX_UNI_DIR_SECT_BOOTLD);

	if (!tab_desc)
		return -EINVAL;

	tab_size = FUNC0(tab_desc->findex) +
			(FUNC0(tab_desc->entry_size) * (idx + 1));

	if (adapter->fw->size < tab_size)
		return -EINVAL;

	offs = FUNC0(tab_desc->findex) +
		(FUNC0(tab_desc->entry_size) * (idx));
	descr = (struct uni_data_desc *)&unirom[offs];

	data_size = FUNC0(descr->findex) + FUNC0(descr->size);

	if (adapter->fw->size < data_size)
		return -EINVAL;

	return 0;
}