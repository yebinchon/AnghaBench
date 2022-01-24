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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct qla82xx_uri_table_desc {int /*<<< orphan*/  entry_size; int /*<<< orphan*/  findex; int /*<<< orphan*/  num_entries; } ;
typedef  size_t __le32 ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct qla82xx_uri_table_desc *
FUNC1(const u8 *unirom, int section)
{
	uint32_t i;
	struct qla82xx_uri_table_desc *directory =
		(struct qla82xx_uri_table_desc *)&unirom[0];
	__le32 offset;
	__le32 tab_type;
	__le32 entries = FUNC0(directory->num_entries);

	for (i = 0; i < entries; i++) {
		offset = FUNC0(directory->findex) +
		    (i * FUNC0(directory->entry_size));
		tab_type = FUNC0(*((u32 *)&unirom[offset] + 8));

		if (tab_type == section)
			return (struct qla82xx_uri_table_desc *)&unirom[offset];
	}

	return NULL;
}