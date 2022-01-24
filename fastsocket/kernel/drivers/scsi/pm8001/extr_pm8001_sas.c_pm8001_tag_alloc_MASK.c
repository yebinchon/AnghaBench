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
typedef  unsigned int u32 ;
struct pm8001_hba_info {unsigned int tags_num; void* tags; } ;

/* Variables and functions */
 int SAS_QUEUE_FULL ; 
 unsigned int FUNC0 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,unsigned int) ; 

inline int FUNC2(struct pm8001_hba_info *pm8001_ha, u32 *tag_out)
{
	unsigned int index, tag;
	void *bitmap = pm8001_ha->tags;

	index = FUNC0(bitmap, pm8001_ha->tags_num);
	tag = index;
	if (tag >= pm8001_ha->tags_num)
		return -SAS_QUEUE_FULL;
	FUNC1(pm8001_ha, tag);
	*tag_out = tag;
	return 0;
}