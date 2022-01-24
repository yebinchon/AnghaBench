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
struct ubi_vid_hdr {int copy_flag; void* sqnum; void* data_crc; void* data_size; int /*<<< orphan*/  vol_type; void* data_pad; int /*<<< orphan*/  compat; void* lnum; void* vol_id; } ;
struct ubi_device {int /*<<< orphan*/  bad_allowed; int /*<<< orphan*/  alc_mutex; scalar_t__ ro_mode; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int EROFS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  UBI_CRC32_INIT ; 
 int UBI_IO_RETRIES ; 
 int /*<<< orphan*/  UBI_VID_DYNAMIC ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,int) ; 
 int FUNC4 (struct ubi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ubi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ubi_device*) ; 
 int FUNC9 (struct ubi_device*,struct ubi_volume*,int) ; 
 int FUNC10 (struct ubi_device*,struct ubi_volume*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ubi_device*,struct ubi_vid_hdr*) ; 
 int /*<<< orphan*/  FUNC12 (struct ubi_device*,int) ; 
 int FUNC13 (struct ubi_device*,void const*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct ubi_device*,int,struct ubi_vid_hdr*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,int,...) ; 
 int FUNC18 (struct ubi_device*,int) ; 
 int FUNC19 (struct ubi_device*,int,int) ; 
 struct ubi_vid_hdr* FUNC20 (struct ubi_device*,int /*<<< orphan*/ ) ; 

int FUNC21(struct ubi_device *ubi, struct ubi_volume *vol,
			      int lnum, const void *buf, int len, int dtype)
{
	int err, pnum, tries = 0, vol_id = vol->vol_id;
	struct ubi_vid_hdr *vid_hdr;
	uint32_t crc;

	if (ubi->ro_mode)
		return -EROFS;

	if (len == 0) {
		/*
		 * Special case when data length is zero. In this case the LEB
		 * has to be unmapped and mapped somewhere else.
		 */
		err = FUNC9(ubi, vol, lnum);
		if (err)
			return err;
		return FUNC10(ubi, vol, lnum, NULL, 0, 0, dtype);
	}

	vid_hdr = FUNC20(ubi, GFP_NOFS);
	if (!vid_hdr)
		return -ENOMEM;

	FUNC6(&ubi->alc_mutex);
	err = FUNC4(ubi, vol_id, lnum);
	if (err)
		goto out_mutex;

	vid_hdr->sqnum = FUNC1(FUNC8(ubi));
	vid_hdr->vol_id = FUNC0(vol_id);
	vid_hdr->lnum = FUNC0(lnum);
	vid_hdr->compat = FUNC12(ubi, vol_id);
	vid_hdr->data_pad = FUNC0(vol->data_pad);

	crc = FUNC2(UBI_CRC32_INIT, buf, len);
	vid_hdr->vol_type = UBI_VID_DYNAMIC;
	vid_hdr->data_size = FUNC0(len);
	vid_hdr->copy_flag = 1;
	vid_hdr->data_crc = FUNC0(crc);

retry:
	pnum = FUNC18(ubi, dtype);
	if (pnum < 0) {
		err = pnum;
		goto out_leb_unlock;
	}

	FUNC3("change LEB %d:%d, PEB %d, write VID hdr to PEB %d",
		vol_id, lnum, vol->eba_tbl[lnum], pnum);

	err = FUNC14(ubi, pnum, vid_hdr);
	if (err) {
		FUNC17("failed to write VID header to LEB %d:%d, PEB %d",
			 vol_id, lnum, pnum);
		goto write_error;
	}

	err = FUNC13(ubi, buf, pnum, 0, len);
	if (err) {
		FUNC17("failed to write %d bytes of data to PEB %d",
			 len, pnum);
		goto write_error;
	}

	if (vol->eba_tbl[lnum] >= 0) {
		err = FUNC19(ubi, vol->eba_tbl[lnum], 0);
		if (err)
			goto out_leb_unlock;
	}

	vol->eba_tbl[lnum] = pnum;

out_leb_unlock:
	FUNC5(ubi, vol_id, lnum);
out_mutex:
	FUNC7(&ubi->alc_mutex);
	FUNC11(ubi, vid_hdr);
	return err;

write_error:
	if (err != -EIO || !ubi->bad_allowed) {
		/*
		 * This flash device does not admit of bad eraseblocks or
		 * something nasty and unexpected happened. Switch to read-only
		 * mode just in case.
		 */
		FUNC16(ubi);
		goto out_leb_unlock;
	}

	err = FUNC19(ubi, pnum, 1);
	if (err || ++tries > UBI_IO_RETRIES) {
		FUNC16(ubi);
		goto out_leb_unlock;
	}

	vid_hdr->sqnum = FUNC1(FUNC8(ubi));
	FUNC15("try another PEB");
	goto retry;
}