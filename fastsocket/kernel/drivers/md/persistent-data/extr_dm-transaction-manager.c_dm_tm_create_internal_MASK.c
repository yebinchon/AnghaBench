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
struct dm_transaction_manager {int dummy; } ;
typedef  struct dm_transaction_manager dm_space_map ;
struct dm_block_manager {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct dm_transaction_manager*) ; 
 int FUNC2 (struct dm_transaction_manager*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_block_manager*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_transaction_manager*) ; 
 int FUNC5 (struct dm_transaction_manager*,struct dm_transaction_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dm_transaction_manager* FUNC6 () ; 
 int FUNC7 (struct dm_transaction_manager*,struct dm_transaction_manager*,void*,size_t) ; 
 struct dm_transaction_manager* FUNC8 (struct dm_block_manager*,struct dm_transaction_manager*) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_transaction_manager*) ; 

__attribute__((used)) static int FUNC10(struct dm_block_manager *bm,
				 dm_block_t sb_location,
				 struct dm_transaction_manager **tm,
				 struct dm_space_map **sm,
				 int create,
				 void *sm_root, size_t sm_len)
{
	int r;

	*sm = FUNC6();
	if (FUNC1(*sm))
		return FUNC2(*sm);

	*tm = FUNC8(bm, *sm);
	if (FUNC1(*tm)) {
		FUNC4(*sm);
		return FUNC2(*tm);
	}

	if (create) {
		r = FUNC5(*sm, *tm, FUNC3(bm),
					  sb_location);
		if (r) {
			FUNC0("couldn't create metadata space map");
			goto bad;
		}

	} else {
		r = FUNC7(*sm, *tm, sm_root, sm_len);
		if (r) {
			FUNC0("couldn't open metadata space map");
			goto bad;
		}
	}

	return 0;

bad:
	FUNC9(*tm);
	FUNC4(*sm);
	return r;
}