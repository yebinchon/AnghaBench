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
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODE_PAGE_POWER_CONDITION ; 
 int MODE_PAGE_POW_CND_LEN ; 
 int /*<<< orphan*/  MODE_PAGE_POW_CND_LEN_FIELD ; 
 int SNTI_INTERNAL_ERROR ; 
 int SNTI_TRANSLATION_SUCCESS ; 

__attribute__((used)) static int FUNC0(struct nvme_ns *ns,
					struct sg_io_hdr *hdr, u8 *resp,
					int len)
{
	int res = SNTI_TRANSLATION_SUCCESS;

	if (len < MODE_PAGE_POW_CND_LEN)
		return SNTI_INTERNAL_ERROR;

	resp[0] = MODE_PAGE_POWER_CONDITION;
	resp[1] = MODE_PAGE_POW_CND_LEN_FIELD;
	/* All other bytes are zero */

	return res;
}