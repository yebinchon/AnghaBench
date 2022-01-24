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
typedef  void* uint32_t ;
struct ubi_vid_hdr {int /*<<< orphan*/  data_crc; int /*<<< orphan*/  data_size; int /*<<< orphan*/  copy_flag; int /*<<< orphan*/  sqnum; } ;
struct ubi_scan_leb {unsigned long long sqnum; int pnum; } ;
struct ubi_device {int dummy; } ;

/* Variables and functions */
 int EBADMSG ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UBI_CRC32_INIT ; 
 int UBI_IO_BITFLIPS ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubi_device*,struct ubi_vid_hdr*) ; 
 int FUNC7 (struct ubi_device*,void*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct ubi_device*,int,struct ubi_vid_hdr*,int /*<<< orphan*/ ) ; 
 struct ubi_vid_hdr* FUNC9 (struct ubi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 void* FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct ubi_device *ubi, const struct ubi_scan_leb *seb,
			int pnum, const struct ubi_vid_hdr *vid_hdr)
{
	void *buf;
	int len, err, second_is_newer, bitflips = 0, corrupted = 0;
	uint32_t data_crc, crc;
	struct ubi_vid_hdr *vh = NULL;
	unsigned long long sqnum2 = FUNC1(vid_hdr->sqnum);

	if (sqnum2 == seb->sqnum) {
		/*
		 * This must be a really ancient UBI image which has been
		 * created before sequence numbers support has been added. At
		 * that times we used 32-bit LEB versions stored in logical
		 * eraseblocks. That was before UBI got into mainline. We do not
		 * support these images anymore. Well, those images will work
		 * still work, but only if no unclean reboots happened.
		 */
		FUNC5("unsupported on-flash UBI format\n");
		return -EINVAL;
	}

	/* Obviously the LEB with lower sequence counter is older */
	second_is_newer = !!(sqnum2 > seb->sqnum);

	/*
	 * Now we know which copy is newer. If the copy flag of the PEB with
	 * newer version is not set, then we just return, otherwise we have to
	 * check data CRC. For the second PEB we already have the VID header,
	 * for the first one - we'll need to re-read it from flash.
	 *
	 * Note: this may be optimized so that we wouldn't read twice.
	 */

	if (second_is_newer) {
		if (!vid_hdr->copy_flag) {
			/* It is not a copy, so it is newer */
			FUNC3("second PEB %d is newer, copy_flag is unset",
				pnum);
			return 1;
		}
	} else {
		pnum = seb->pnum;

		vh = FUNC9(ubi, GFP_KERNEL);
		if (!vh)
			return -ENOMEM;

		err = FUNC8(ubi, pnum, vh, 0);
		if (err) {
			if (err == UBI_IO_BITFLIPS)
				bitflips = 1;
			else {
				FUNC4("VID of PEB %d header is bad, but it "
					"was OK earlier", pnum);
				if (err > 0)
					err = -EIO;

				goto out_free_vidh;
			}
		}

		if (!vh->copy_flag) {
			/* It is not a copy, so it is newer */
			FUNC3("first PEB %d is newer, copy_flag is unset",
				pnum);
			err = bitflips << 1;
			goto out_free_vidh;
		}

		vid_hdr = vh;
	}

	/* Read the data of the copy and check the CRC */

	len = FUNC0(vid_hdr->data_size);
	buf = FUNC11(len);
	if (!buf) {
		err = -ENOMEM;
		goto out_free_vidh;
	}

	err = FUNC7(ubi, buf, pnum, 0, len);
	if (err && err != UBI_IO_BITFLIPS && err != -EBADMSG)
		goto out_free_buf;

	data_crc = FUNC0(vid_hdr->data_crc);
	crc = FUNC2(UBI_CRC32_INIT, buf, len);
	if (crc != data_crc) {
		FUNC3("PEB %d CRC error: calculated %#08x, must be %#08x",
			pnum, crc, data_crc);
		corrupted = 1;
		bitflips = 0;
		second_is_newer = !second_is_newer;
	} else {
		FUNC3("PEB %d CRC is OK", pnum);
		bitflips = !!err;
	}

	FUNC10(buf);
	FUNC6(ubi, vh);

	if (second_is_newer)
		FUNC3("second PEB %d is newer, copy_flag is set", pnum);
	else
		FUNC3("first PEB %d is newer, copy_flag is set", pnum);

	return second_is_newer | (bitflips << 1) | (corrupted << 2);

out_free_buf:
	FUNC10(buf);
out_free_vidh:
	FUNC6(ubi, vh);
	return err;
}