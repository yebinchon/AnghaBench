#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int buf_count; int /*<<< orphan*/  entry_list; } ;
struct TYPE_4__ {TYPE_1__ init_pool; } ;
struct qeth_card {TYPE_2__ qdio; } ;
struct qeth_buffer_pool_entry {int /*<<< orphan*/  init_list; void** elements; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  TRACE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_buffer_pool_entry*) ; 
 struct qeth_buffer_pool_entry* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_card*) ; 

__attribute__((used)) static int FUNC8(struct qeth_card *card)
{
	struct qeth_buffer_pool_entry *pool_entry;
	void *ptr;
	int i, j;

	FUNC0(TRACE, 5, "alocpool");
	for (i = 0; i < card->qdio.init_pool.buf_count; ++i) {
		pool_entry = FUNC5(sizeof(*pool_entry), GFP_KERNEL);
		if (!pool_entry) {
			FUNC7(card);
			return -ENOMEM;
		}
		for (j = 0; j < FUNC1(card); ++j) {
			ptr = (void *) FUNC2(GFP_KERNEL);
			if (!ptr) {
				while (j > 0)
					FUNC3((unsigned long)
						  pool_entry->elements[--j]);
				FUNC4(pool_entry);
				FUNC7(card);
				return -ENOMEM;
			}
			pool_entry->elements[j] = ptr;
		}
		FUNC6(&pool_entry->init_list,
			 &card->qdio.init_pool.entry_list);
	}
	return 0;
}