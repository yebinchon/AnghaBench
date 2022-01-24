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
struct dm_buffer {int dummy; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block_manager {int /*<<< orphan*/  bufio; scalar_t__ read_only; } ;
struct dm_block {int dummy; } ;
struct buffer_aux {int write_locked; struct dm_block_validator* validator; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_block_manager*) ; 
 struct buffer_aux* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_buffer**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_block*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct dm_block_manager *bm,
			  dm_block_t b, struct dm_block_validator *v,
			  struct dm_block **result)
{
	int r;
	struct buffer_aux *aux;
	void *p;

	if (bm->read_only)
		return -EPERM;

	p = FUNC5(bm->bufio, b, (struct dm_buffer **) result);
	if (FUNC9(FUNC0(p)))
		return FUNC1(p);

	FUNC7(p, 0, FUNC3(bm));

	aux = FUNC4(FUNC8(*result));
	r = FUNC2(&aux->lock);
	if (r) {
		FUNC6(FUNC8(*result));
		return r;
	}

	aux->write_locked = 1;
	aux->validator = v;

	return 0;
}