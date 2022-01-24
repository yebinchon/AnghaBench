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
struct ubi_device {int /*<<< orphan*/  buf_mutex; int /*<<< orphan*/  peb_size; int /*<<< orphan*/  peb_buf1; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EBADMSG ; 
 int EIO ; 
 int UBI_IO_BITFLIPS ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ubi_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int* patterns ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 
 int FUNC8 (struct ubi_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ubi_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

__attribute__((used)) static int FUNC11(struct ubi_device *ubi, int pnum)
{
	int err, i, patt_count;

	FUNC10("run torture test for PEB %d", pnum);
	patt_count = FUNC0(patterns);
	FUNC6(patt_count > 0);

	FUNC4(&ubi->buf_mutex);
	for (i = 0; i < patt_count; i++) {
		err = FUNC2(ubi, pnum);
		if (err)
			goto out;

		/* Make sure the PEB contains only 0xFF bytes */
		err = FUNC8(ubi, ubi->peb_buf1, pnum, 0, ubi->peb_size);
		if (err)
			goto out;

		err = FUNC1(ubi->peb_buf1, 0xFF, ubi->peb_size);
		if (err == 0) {
			FUNC7("erased PEB %d, but a non-0xFF byte found",
				pnum);
			err = -EIO;
			goto out;
		}

		/* Write a pattern and check it */
		FUNC3(ubi->peb_buf1, patterns[i], ubi->peb_size);
		err = FUNC9(ubi, ubi->peb_buf1, pnum, 0, ubi->peb_size);
		if (err)
			goto out;

		FUNC3(ubi->peb_buf1, ~patterns[i], ubi->peb_size);
		err = FUNC8(ubi, ubi->peb_buf1, pnum, 0, ubi->peb_size);
		if (err)
			goto out;

		err = FUNC1(ubi->peb_buf1, patterns[i], ubi->peb_size);
		if (err == 0) {
			FUNC7("pattern %x checking failed for PEB %d",
				patterns[i], pnum);
			err = -EIO;
			goto out;
		}
	}

	err = patt_count;
	FUNC10("PEB %d passed torture test, do not mark it a bad", pnum);

out:
	FUNC5(&ubi->buf_mutex);
	if (err == UBI_IO_BITFLIPS || err == -EBADMSG) {
		/*
		 * If a bit-flip or data integrity error was detected, the test
		 * has not passed because it happened on a freshly erased
		 * physical eraseblock which means something is wrong with it.
		 */
		FUNC7("read problems on freshly erased PEB %d, must be bad",
			pnum);
		err = -EIO;
	}
	return err;
}