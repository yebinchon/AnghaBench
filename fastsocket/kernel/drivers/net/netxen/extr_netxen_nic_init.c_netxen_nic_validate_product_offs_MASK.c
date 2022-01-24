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
typedef  unsigned long long uint32_t ;
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct uni_table_desc {int num_entries; int entry_size; int findex; } ;
struct TYPE_4__ {scalar_t__ revision_id; } ;
struct netxen_adapter {TYPE_2__ ahw; scalar_t__ file_prd_off; TYPE_1__* fw; } ;
typedef  scalar_t__ __le32 ;
struct TYPE_3__ {scalar_t__* data; scalar_t__ size; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int NX_UNI_CHIP_REV_OFF ; 
 int /*<<< orphan*/  NX_UNI_DIR_SECT_PRODUCT_TBL ; 
 int NX_UNI_FLAGS_OFF ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct netxen_adapter*) ; 
 struct uni_table_desc* FUNC4 (scalar_t__ const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct netxen_adapter *adapter)
{
	struct uni_table_desc *ptab_descr;
	const u8 *unirom = adapter->fw->data;
	int mn_present = (FUNC0(adapter->ahw.revision_id)) ?
			1 : FUNC3(adapter);
	__le32 entries;
	__le32 entry_size;
	u32 tab_size;
	u32 i;

	ptab_descr = FUNC4(unirom, NX_UNI_DIR_SECT_PRODUCT_TBL);
	if (ptab_descr == NULL)
		return -EINVAL;

	entries = FUNC2(ptab_descr->num_entries);
	entry_size = FUNC2(ptab_descr->entry_size);
	tab_size = FUNC2(ptab_descr->findex) + (entries * entry_size);

	if (adapter->fw->size < tab_size)
		return -EINVAL;

nomn:
	for (i = 0; i < entries; i++) {

		__le32 flags, file_chiprev, offs;
		u8 chiprev = adapter->ahw.revision_id;
		uint32_t flagbit;

		offs = FUNC2(ptab_descr->findex) +
				(i * FUNC2(ptab_descr->entry_size));
		flags = FUNC2(*((int *)&unirom[offs] + NX_UNI_FLAGS_OFF));
		file_chiprev = FUNC2(*((int *)&unirom[offs] +
							NX_UNI_CHIP_REV_OFF));

		flagbit = mn_present ? 1 : 2;

		if ((chiprev == file_chiprev) &&
					((1ULL << flagbit) & flags)) {
			adapter->file_prd_off = offs;
			return 0;
		}
	}

	if (mn_present && FUNC1(adapter->ahw.revision_id)) {
		mn_present = 0;
		goto nomn;
	}

	return -EINVAL;
}