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
typedef  int /*<<< orphan*/  uint32_t ;
struct ubi_vid_hdr {void* hdr_crc; int /*<<< orphan*/  version; void* magic; } ;
struct ubi_device {int peb_count; char* vid_hdr_shift; int /*<<< orphan*/  vid_hdr_alsize; int /*<<< orphan*/  vid_hdr_aloffset; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  UBI_CRC32_INIT ; 
 int /*<<< orphan*/  UBI_VERSION ; 
 int /*<<< orphan*/  UBI_VID_HDR_MAGIC ; 
 int /*<<< orphan*/  UBI_VID_HDR_SIZE_CRC ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ubi_vid_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (struct ubi_device*,int) ; 
 int FUNC4 (struct ubi_device*,int,struct ubi_vid_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct ubi_device*,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct ubi_device *ubi, int pnum,
			 struct ubi_vid_hdr *vid_hdr)
{
	int err;
	uint32_t crc;
	void *p;

	FUNC2("write VID header to PEB %d", pnum);
	FUNC5(pnum >= 0 &&  pnum < ubi->peb_count);

	err = FUNC3(ubi, pnum);
	if (err)
		return err > 0 ? -EINVAL : err;

	vid_hdr->magic = FUNC0(UBI_VID_HDR_MAGIC);
	vid_hdr->version = UBI_VERSION;
	crc = FUNC1(UBI_CRC32_INIT, vid_hdr, UBI_VID_HDR_SIZE_CRC);
	vid_hdr->hdr_crc = FUNC0(crc);

	err = FUNC4(ubi, pnum, vid_hdr);
	if (err)
		return -EINVAL;

	p = (char *)vid_hdr - ubi->vid_hdr_shift;
	err = FUNC6(ubi, p, pnum, ubi->vid_hdr_aloffset,
			   ubi->vid_hdr_alsize);
	return err;
}