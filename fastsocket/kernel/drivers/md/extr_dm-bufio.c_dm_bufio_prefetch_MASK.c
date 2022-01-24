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
struct dm_bufio_client {int /*<<< orphan*/  bdev; } ;
struct dm_buffer {int /*<<< orphan*/  block; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_PREFETCH ; 
 int /*<<< orphan*/  READ ; 
 struct dm_buffer* FUNC2 (struct dm_bufio_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct dm_bufio_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct dm_bufio_client*) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_bufio_client*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  read_endio ; 
 int /*<<< orphan*/  FUNC12 (struct dm_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  write_list ; 

void FUNC14(struct dm_bufio_client *c,
		       sector_t block, unsigned n_blocks)
{
	FUNC1(write_list);

	FUNC0(FUNC7());

	FUNC8(c);

	for (; n_blocks--; block++) {
		int need_submit;
		struct dm_buffer *b;
		b = FUNC2(c, block, NF_PREFETCH, &need_submit,
				&write_list);
		if (FUNC13(!FUNC11(&write_list))) {
			FUNC10(c);
			FUNC5(FUNC4(c->bdev));
			FUNC3(&write_list, c);
			FUNC8(c);
		}
		if (FUNC13(b != NULL)) {
			FUNC10(c);

			if (need_submit)
				FUNC12(b, READ, b->block, read_endio);
			FUNC9(b);

			FUNC6();

			if (!n_blocks)
				goto flush_plug;
			FUNC8(c);
		}
	}

	FUNC10(c);

flush_plug:
	FUNC5(FUNC4(c->bdev));
}