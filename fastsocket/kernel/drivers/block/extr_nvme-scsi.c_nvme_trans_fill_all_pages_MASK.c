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
typedef  size_t u16 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int dummy; } ;

/* Variables and functions */
 size_t MODE_PAGE_CACHING_LEN ; 
 size_t MODE_PAGE_CONTROL_LEN ; 
 int /*<<< orphan*/  MODE_PAGE_INF_EXC_LEN ; 
 size_t MODE_PAGE_POW_CND_LEN ; 
 int SNTI_TRANSLATION_SUCCESS ; 
 int FUNC0 (struct nvme_ns*,struct sg_io_hdr*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (struct nvme_ns*,struct sg_io_hdr*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (struct nvme_ns*,struct sg_io_hdr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nvme_ns*,struct sg_io_hdr*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC4(struct nvme_ns *ns, struct sg_io_hdr *hdr,
				     u8 *resp, int len)
{
	int res = SNTI_TRANSLATION_SUCCESS;
	u16 mode_pages_offset_1 = 0;
	u16 mode_pages_offset_2, mode_pages_offset_3, mode_pages_offset_4;

	mode_pages_offset_2 = mode_pages_offset_1 + MODE_PAGE_CACHING_LEN;
	mode_pages_offset_3 = mode_pages_offset_2 + MODE_PAGE_CONTROL_LEN;
	mode_pages_offset_4 = mode_pages_offset_3 + MODE_PAGE_POW_CND_LEN;

	res = FUNC0(ns, hdr, &resp[mode_pages_offset_1],
					MODE_PAGE_CACHING_LEN);
	if (res != SNTI_TRANSLATION_SUCCESS)
		goto out;
	res = FUNC1(ns, hdr, &resp[mode_pages_offset_2],
					MODE_PAGE_CONTROL_LEN);
	if (res != SNTI_TRANSLATION_SUCCESS)
		goto out;
	res = FUNC3(ns, hdr, &resp[mode_pages_offset_3],
					MODE_PAGE_POW_CND_LEN);
	if (res != SNTI_TRANSLATION_SUCCESS)
		goto out;
	res = FUNC2(ns, hdr, &resp[mode_pages_offset_4],
					MODE_PAGE_INF_EXC_LEN);
	if (res != SNTI_TRANSLATION_SUCCESS)
		goto out;

 out:
	return res;
}