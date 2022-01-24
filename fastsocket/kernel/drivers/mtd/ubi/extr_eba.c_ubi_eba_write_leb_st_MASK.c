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
typedef  int uint32_t ;
struct ubi_volume {int vol_id; int data_pad; int* eba_tbl; } ;
struct ubi_vid_hdr {void* sqnum; void* data_crc; void* used_ebs; void* data_size; int /*<<< orphan*/  vol_type; void* data_pad; int /*<<< orphan*/  compat; void* lnum; void* vol_id; } ;
struct ubi_device {int /*<<< orphan*/  bad_allowed; int /*<<< orphan*/  min_io_size; scalar_t__ ro_mode; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 int EROFS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  UBI_CRC32_INIT ; 
 int UBI_IO_RETRIES ; 
 int /*<<< orphan*/  UBI_VID_STATIC ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int,int,int) ; 
 int FUNC5 (struct ubi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ubi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ubi_device*,struct ubi_vid_hdr*) ; 
 int /*<<< orphan*/  FUNC10 (struct ubi_device*,int) ; 
 int FUNC11 (struct ubi_device*,void const*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct ubi_device*,int,struct ubi_vid_hdr*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,int,...) ; 
 int FUNC16 (struct ubi_device*,int) ; 
 int FUNC17 (struct ubi_device*,int,int) ; 
 struct ubi_vid_hdr* FUNC18 (struct ubi_device*,int /*<<< orphan*/ ) ; 

int FUNC19(struct ubi_device *ubi, struct ubi_volume *vol,
			 int lnum, const void *buf, int len, int dtype,
			 int used_ebs)
{
	int err, pnum, tries = 0, data_size = len, vol_id = vol->vol_id;
	struct ubi_vid_hdr *vid_hdr;
	uint32_t crc;

	if (ubi->ro_mode)
		return -EROFS;

	if (lnum == used_ebs - 1)
		/* If this is the last LEB @len may be unaligned */
		len = FUNC0(data_size, ubi->min_io_size);
	else
		FUNC8(!(len & (ubi->min_io_size - 1)));

	vid_hdr = FUNC18(ubi, GFP_NOFS);
	if (!vid_hdr)
		return -ENOMEM;

	err = FUNC5(ubi, vol_id, lnum);
	if (err) {
		FUNC9(ubi, vid_hdr);
		return err;
	}

	vid_hdr->sqnum = FUNC2(FUNC7(ubi));
	vid_hdr->vol_id = FUNC1(vol_id);
	vid_hdr->lnum = FUNC1(lnum);
	vid_hdr->compat = FUNC10(ubi, vol_id);
	vid_hdr->data_pad = FUNC1(vol->data_pad);

	crc = FUNC3(UBI_CRC32_INIT, buf, data_size);
	vid_hdr->vol_type = UBI_VID_STATIC;
	vid_hdr->data_size = FUNC1(data_size);
	vid_hdr->used_ebs = FUNC1(used_ebs);
	vid_hdr->data_crc = FUNC1(crc);

retry:
	pnum = FUNC16(ubi, dtype);
	if (pnum < 0) {
		FUNC9(ubi, vid_hdr);
		FUNC6(ubi, vol_id, lnum);
		return pnum;
	}

	FUNC4("write VID hdr and %d bytes at LEB %d:%d, PEB %d, used_ebs %d",
		len, vol_id, lnum, pnum, used_ebs);

	err = FUNC12(ubi, pnum, vid_hdr);
	if (err) {
		FUNC15("failed to write VID header to LEB %d:%d, PEB %d",
			 vol_id, lnum, pnum);
		goto write_error;
	}

	err = FUNC11(ubi, buf, pnum, 0, len);
	if (err) {
		FUNC15("failed to write %d bytes of data to PEB %d",
			 len, pnum);
		goto write_error;
	}

	FUNC8(vol->eba_tbl[lnum] < 0);
	vol->eba_tbl[lnum] = pnum;

	FUNC6(ubi, vol_id, lnum);
	FUNC9(ubi, vid_hdr);
	return 0;

write_error:
	if (err != -EIO || !ubi->bad_allowed) {
		/*
		 * This flash device does not admit of bad eraseblocks or
		 * something nasty and unexpected happened. Switch to read-only
		 * mode just in case.
		 */
		FUNC14(ubi);
		FUNC6(ubi, vol_id, lnum);
		FUNC9(ubi, vid_hdr);
		return err;
	}

	err = FUNC17(ubi, pnum, 1);
	if (err || ++tries > UBI_IO_RETRIES) {
		FUNC14(ubi);
		FUNC6(ubi, vol_id, lnum);
		FUNC9(ubi, vid_hdr);
		return err;
	}

	vid_hdr->sqnum = FUNC2(FUNC7(ubi));
	FUNC13("try another PEB");
	goto retry;
}