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
struct ubi_volume {int vol_id; int* eba_tbl; int data_pad; } ;
struct ubi_vid_hdr {void* sqnum; void* data_pad; int /*<<< orphan*/  compat; void* lnum; void* vol_id; int /*<<< orphan*/  vol_type; } ;
struct ubi_device {scalar_t__ bad_allowed; scalar_t__ ro_mode; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int EROFS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int UBI_IO_RETRIES ; 
 int /*<<< orphan*/  UBI_VID_DYNAMIC ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,int,int) ; 
 int FUNC3 (struct ubi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ubi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ubi_device*) ; 
 int FUNC6 (struct ubi_device*,int,int,int,void const*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ubi_device*,struct ubi_vid_hdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubi_device*,int) ; 
 int FUNC9 (struct ubi_device*,void const*,int,int,int) ; 
 int FUNC10 (struct ubi_device*,int,struct ubi_vid_hdr*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,...) ; 
 int FUNC14 (struct ubi_device*,int) ; 
 int FUNC15 (struct ubi_device*,int,int) ; 
 struct ubi_vid_hdr* FUNC16 (struct ubi_device*,int /*<<< orphan*/ ) ; 

int FUNC17(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
		      const void *buf, int offset, int len, int dtype)
{
	int err, pnum, tries = 0, vol_id = vol->vol_id;
	struct ubi_vid_hdr *vid_hdr;

	if (ubi->ro_mode)
		return -EROFS;

	err = FUNC3(ubi, vol_id, lnum);
	if (err)
		return err;

	pnum = vol->eba_tbl[lnum];
	if (pnum >= 0) {
		FUNC2("write %d bytes at offset %d of LEB %d:%d, PEB %d",
			len, offset, vol_id, lnum, pnum);

		err = FUNC9(ubi, buf, pnum, offset, len);
		if (err) {
			FUNC13("failed to write data to PEB %d", pnum);
			if (err == -EIO && ubi->bad_allowed)
				err = FUNC6(ubi, pnum, vol_id, lnum, buf,
						  offset, len);
			if (err)
				FUNC12(ubi);
		}
		FUNC4(ubi, vol_id, lnum);
		return err;
	}

	/*
	 * The logical eraseblock is not mapped. We have to get a free physical
	 * eraseblock and write the volume identifier header there first.
	 */
	vid_hdr = FUNC16(ubi, GFP_NOFS);
	if (!vid_hdr) {
		FUNC4(ubi, vol_id, lnum);
		return -ENOMEM;
	}

	vid_hdr->vol_type = UBI_VID_DYNAMIC;
	vid_hdr->sqnum = FUNC1(FUNC5(ubi));
	vid_hdr->vol_id = FUNC0(vol_id);
	vid_hdr->lnum = FUNC0(lnum);
	vid_hdr->compat = FUNC8(ubi, vol_id);
	vid_hdr->data_pad = FUNC0(vol->data_pad);

retry:
	pnum = FUNC14(ubi, dtype);
	if (pnum < 0) {
		FUNC7(ubi, vid_hdr);
		FUNC4(ubi, vol_id, lnum);
		return pnum;
	}

	FUNC2("write VID hdr and %d bytes at offset %d of LEB %d:%d, PEB %d",
		len, offset, vol_id, lnum, pnum);

	err = FUNC10(ubi, pnum, vid_hdr);
	if (err) {
		FUNC13("failed to write VID header to LEB %d:%d, PEB %d",
			 vol_id, lnum, pnum);
		goto write_error;
	}

	if (len) {
		err = FUNC9(ubi, buf, pnum, offset, len);
		if (err) {
			FUNC13("failed to write %d bytes at offset %d of "
				 "LEB %d:%d, PEB %d", len, offset, vol_id,
				 lnum, pnum);
			goto write_error;
		}
	}

	vol->eba_tbl[lnum] = pnum;

	FUNC4(ubi, vol_id, lnum);
	FUNC7(ubi, vid_hdr);
	return 0;

write_error:
	if (err != -EIO || !ubi->bad_allowed) {
		FUNC12(ubi);
		FUNC4(ubi, vol_id, lnum);
		FUNC7(ubi, vid_hdr);
		return err;
	}

	/*
	 * Fortunately, this is the first write operation to this physical
	 * eraseblock, so just put it and request a new one. We assume that if
	 * this physical eraseblock went bad, the erase code will handle that.
	 */
	err = FUNC15(ubi, pnum, 1);
	if (err || ++tries > UBI_IO_RETRIES) {
		FUNC12(ubi);
		FUNC4(ubi, vol_id, lnum);
		FUNC7(ubi, vid_hdr);
		return err;
	}

	vid_hdr->sqnum = FUNC1(FUNC5(ubi));
	FUNC11("try another PEB");
	goto retry;
}