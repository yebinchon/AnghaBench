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
struct ubi_device {int peb_count; int peb_size; TYPE_1__* mtd; } ;
typedef  int loff_t ;
struct TYPE_2__ {int (* read ) (TYPE_1__*,int,int,size_t*,void*) ;} ;

/* Variables and functions */
 int EBADMSG ; 
 int EINVAL ; 
 int EIO ; 
 int EUCLEAN ; 
 int UBI_IO_BITFLIPS ; 
 int /*<<< orphan*/  UBI_IO_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (struct ubi_device const*,int) ; 
 int FUNC4 (TYPE_1__*,int,int,size_t*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,int,int,size_t) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(const struct ubi_device *ubi, void *buf, int pnum, int offset,
		int len)
{
	int err, retries = 0;
	size_t read;
	loff_t addr;

	FUNC1("read %d bytes from PEB %d:%d", len, pnum, offset);

	FUNC5(pnum >= 0 && pnum < ubi->peb_count);
	FUNC5(offset >= 0 && offset + len <= ubi->peb_size);
	FUNC5(len > 0);

	err = FUNC3(ubi, pnum);
	if (err)
		return err > 0 ? -EINVAL : err;

	addr = (loff_t)pnum * ubi->peb_size + offset;
retry:
	err = ubi->mtd->read(ubi->mtd, addr, len, &read, buf);
	if (err) {
		if (err == -EUCLEAN) {
			/*
			 * -EUCLEAN is reported if there was a bit-flip which
			 * was corrected, so this is harmless.
			 *
			 * We do not report about it here unless debugging is
			 * enabled. A corresponding message will be printed
			 * later, when it is has been scrubbed.
			 */
			FUNC2("fixable bit-flip detected at PEB %d", pnum);
			FUNC5(len == read);
			return UBI_IO_BITFLIPS;
		}

		if (read != len && retries++ < UBI_IO_RETRIES) {
			FUNC1("error %d while reading %d bytes from PEB %d:%d,"
			       " read only %zd bytes, retry",
			       err, len, pnum, offset, read);
			FUNC9();
			goto retry;
		}

		FUNC8("error %d while reading %d bytes from PEB %d:%d, "
			"read %zd bytes", err, len, pnum, offset, read);
		FUNC6();

		/*
		 * The driver should never return -EBADMSG if it failed to read
		 * all the requested data. But some buggy drivers might do
		 * this, so we change it to -EIO.
		 */
		if (read != len && err == -EBADMSG) {
			FUNC5(0);
			err = -EIO;
		}
	} else {
		FUNC5(len == read);

		if (FUNC7()) {
			FUNC0("bit-flip (emulated)");
			err = UBI_IO_BITFLIPS;
		}
	}

	return err;
}