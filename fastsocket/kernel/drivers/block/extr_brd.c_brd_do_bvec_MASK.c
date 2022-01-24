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
struct page {int dummy; } ;
struct brd_device {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 int READ ; 
 int /*<<< orphan*/  FUNC0 (void*,struct brd_device*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct brd_device*,void*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (struct brd_device*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 void* FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct brd_device *brd, struct page *page,
			unsigned int len, unsigned int off, int rw,
			sector_t sector)
{
	void *mem;
	int err = 0;

	if (rw != READ) {
		err = FUNC2(brd, sector, len);
		if (err)
			goto out;
	}

	mem = FUNC4(page, KM_USER0);
	if (rw == READ) {
		FUNC0(mem + off, brd, sector, len);
		FUNC3(page);
	} else {
		FUNC3(page);
		FUNC1(brd, mem + off, sector, len);
	}
	FUNC5(mem, KM_USER0);

out:
	return err;
}