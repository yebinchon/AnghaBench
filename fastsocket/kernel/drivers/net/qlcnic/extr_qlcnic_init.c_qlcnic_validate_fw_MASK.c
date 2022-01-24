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
typedef  int u32 ;
struct uni_table_desc {int /*<<< orphan*/  entry_size; int /*<<< orphan*/  findex; } ;
struct uni_data_desc {int /*<<< orphan*/  size; int /*<<< orphan*/  findex; } ;
struct qlcnic_adapter {size_t file_prd_off; TYPE_1__* fw; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int size; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  QLCNIC_UNI_DIR_SECT_FW ; 
 int QLCNIC_UNI_FIRMWARE_IDX_OFF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct uni_table_desc* FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct qlcnic_adapter *adapter)
{
	struct uni_table_desc *tab_desc;
	struct uni_data_desc *descr;
	const u8 *unirom = adapter->fw->data;
	u32 offs, tab_size, data_size, idx;
	__le32 temp;

	temp = *((__le32 *)&unirom[adapter->file_prd_off] +
		 QLCNIC_UNI_FIRMWARE_IDX_OFF);
	idx = FUNC0(temp);
	tab_desc = FUNC1(unirom, QLCNIC_UNI_DIR_SECT_FW);

	if (!tab_desc)
		return -EINVAL;

	tab_size = FUNC0(tab_desc->findex) +
		   FUNC0(tab_desc->entry_size) * (idx + 1);

	if (adapter->fw->size < tab_size)
		return -EINVAL;

	offs = FUNC0(tab_desc->findex) +
	       FUNC0(tab_desc->entry_size) * idx;
	descr = (struct uni_data_desc *)&unirom[offs];
	data_size = FUNC0(descr->findex) + FUNC0(descr->size);

	if (adapter->fw->size < data_size)
		return -EINVAL;

	return 0;
}