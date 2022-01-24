#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ubi_device {int peb_count; int peb_size; int hdrs_min_io_size; int leb_start; TYPE_1__* mtd; scalar_t__ ro_mode; } ;
typedef  int loff_t ;
struct TYPE_2__ {int (* write ) (TYPE_1__*,int,int,size_t*,void const*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int FUNC2 (struct ubi_device*,int) ; 
 int FUNC3 (struct ubi_device*,int) ; 
 int FUNC4 (struct ubi_device*,int) ; 
 int FUNC5 (TYPE_1__*,int,int,size_t*,void const*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct ubi_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ubi_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

int FUNC12(struct ubi_device *ubi, const void *buf, int pnum, int offset,
		 int len)
{
	int err;
	size_t written;
	loff_t addr;

	FUNC1("write %d bytes to PEB %d:%d", len, pnum, offset);

	FUNC6(pnum >= 0 && pnum < ubi->peb_count);
	FUNC6(offset >= 0 && offset + len <= ubi->peb_size);
	FUNC6(offset % ubi->hdrs_min_io_size == 0);
	FUNC6(len > 0 && len % ubi->hdrs_min_io_size == 0);

	if (ubi->ro_mode) {
		FUNC11("read-only mode");
		return -EROFS;
	}

	/* The below has to be compiled out if paranoid checks are disabled */

	err = FUNC2(ubi, pnum);
	if (err)
		return err > 0 ? -EINVAL : err;

	/* The area we are writing to has to contain all 0xFF bytes */
	err = FUNC7(ubi, pnum, offset, len);
	if (err)
		return err > 0 ? -EINVAL : err;

	if (offset >= ubi->leb_start) {
		/*
		 * We write to the data area of the physical eraseblock. Make
		 * sure it has valid EC and VID headers.
		 */
		err = FUNC3(ubi, pnum);
		if (err)
			return err > 0 ? -EINVAL : err;
		err = FUNC4(ubi, pnum);
		if (err)
			return err > 0 ? -EINVAL : err;
	}

	if (FUNC10()) {
		FUNC0("cannot write %d bytes to PEB %d:%d "
			"(emulated)", len, pnum, offset);
		FUNC9();
		return -EIO;
	}

	addr = (loff_t)pnum * ubi->peb_size + offset;
	err = ubi->mtd->write(ubi->mtd, addr, len, &written, buf);
	if (err) {
		FUNC11("error %d while writing %d bytes to PEB %d:%d, written "
			"%zd bytes", err, len, pnum, offset, written);
		FUNC9();
		FUNC8(ubi, pnum, offset, len);
	} else
		FUNC6(written == len);

	return err;
}