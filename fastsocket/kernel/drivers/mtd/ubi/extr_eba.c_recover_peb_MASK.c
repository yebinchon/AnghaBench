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
struct ubi_volume {int* eba_tbl; } ;
struct ubi_vid_hdr {int /*<<< orphan*/  sqnum; } ;
struct ubi_device {int /*<<< orphan*/  buf_mutex; scalar_t__ peb_buf1; struct ubi_volume** volumes; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int UBI_IO_BITFLIPS ; 
 int UBI_IO_RETRIES ; 
 int /*<<< orphan*/  UBI_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void const*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubi_device*,struct ubi_vid_hdr*) ; 
 int FUNC7 (struct ubi_device*,scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct ubi_device*,int,struct ubi_vid_hdr*,int) ; 
 int FUNC9 (struct ubi_device*,scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct ubi_device*,int,struct ubi_vid_hdr*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int FUNC13 (struct ubi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ubi_device*,int,int) ; 
 struct ubi_vid_hdr* FUNC15 (struct ubi_device*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct ubi_device*,int) ; 

__attribute__((used)) static int FUNC17(struct ubi_device *ubi, int pnum, int vol_id, int lnum,
		       const void *buf, int offset, int len)
{
	int err, idx = FUNC16(ubi, vol_id), new_pnum, data_size, tries = 0;
	struct ubi_volume *vol = ubi->volumes[idx];
	struct ubi_vid_hdr *vid_hdr;

	vid_hdr = FUNC15(ubi, GFP_NOFS);
	if (!vid_hdr)
		return -ENOMEM;

retry:
	new_pnum = FUNC13(ubi, UBI_UNKNOWN);
	if (new_pnum < 0) {
		FUNC6(ubi, vid_hdr);
		return new_pnum;
	}

	FUNC11("recover PEB %d, move data to PEB %d", pnum, new_pnum);

	err = FUNC8(ubi, pnum, vid_hdr, 1);
	if (err && err != UBI_IO_BITFLIPS) {
		if (err > 0)
			err = -EIO;
		goto out_put;
	}

	vid_hdr->sqnum = FUNC0(FUNC5(ubi));
	err = FUNC10(ubi, new_pnum, vid_hdr);
	if (err)
		goto write_error;

	data_size = offset + len;
	FUNC3(&ubi->buf_mutex);
	FUNC2(ubi->peb_buf1 + offset, 0xFF, len);

	/* Read everything before the area where the write failure happened */
	if (offset > 0) {
		err = FUNC7(ubi, ubi->peb_buf1, pnum, 0, offset);
		if (err && err != UBI_IO_BITFLIPS)
			goto out_unlock;
	}

	FUNC1(ubi->peb_buf1 + offset, buf, len);

	err = FUNC9(ubi, ubi->peb_buf1, new_pnum, 0, data_size);
	if (err) {
		FUNC4(&ubi->buf_mutex);
		goto write_error;
	}

	FUNC4(&ubi->buf_mutex);
	FUNC6(ubi, vid_hdr);

	vol->eba_tbl[lnum] = new_pnum;
	FUNC14(ubi, pnum, 1);

	FUNC11("data was successfully recovered");
	return 0;

out_unlock:
	FUNC4(&ubi->buf_mutex);
out_put:
	FUNC14(ubi, new_pnum, 1);
	FUNC6(ubi, vid_hdr);
	return err;

write_error:
	/*
	 * Bad luck? This physical eraseblock is bad too? Crud. Let's try to
	 * get another one.
	 */
	FUNC12("failed to write to PEB %d", new_pnum);
	FUNC14(ubi, new_pnum, 1);
	if (++tries > UBI_IO_RETRIES) {
		FUNC6(ubi, vid_hdr);
		return err;
	}
	FUNC11("try again");
	goto retry;
}