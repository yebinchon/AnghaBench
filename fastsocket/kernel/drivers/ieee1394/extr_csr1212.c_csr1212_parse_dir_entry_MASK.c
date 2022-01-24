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
typedef  scalar_t__ u32 ;
struct csr1212_keyval {struct csr1212_keyval* next; struct csr1212_keyval* prev; scalar_t__ offset; int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
#define  CSR1212_KV_TYPE_CSR_OFFSET 129 
 int CSR1212_KV_TYPE_DIRECTORY ; 
#define  CSR1212_KV_TYPE_IMMEDIATE 128 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int CSR1212_SUCCESS ; 
 int EIO ; 
 int ENOMEM ; 
 int FUNC3 (struct csr1212_keyval*,struct csr1212_keyval*,int) ; 
 struct csr1212_keyval* FUNC4 (struct csr1212_keyval*,scalar_t__) ; 
 struct csr1212_keyval* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct csr1212_keyval* FUNC6 (int /*<<< orphan*/ ) ; 
 struct csr1212_keyval* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct csr1212_keyval* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct csr1212_keyval*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct csr1212_keyval *dir, u32 ki, u32 kv_pos)
{
	int ret = CSR1212_SUCCESS;
	struct csr1212_keyval *k = NULL;
	u32 offset;
	bool keep_keyval = true;

	switch (FUNC1(ki)) {
	case CSR1212_KV_TYPE_IMMEDIATE:
		k = FUNC7(FUNC0(ki),
					  FUNC2(ki));
		if (!k) {
			ret = -ENOMEM;
			goto out;
		}
		/* Don't keep local reference when parsing. */
		keep_keyval = false;
		break;

	case CSR1212_KV_TYPE_CSR_OFFSET:
		k = FUNC5(FUNC0(ki),
					   FUNC2(ki));
		if (!k) {
			ret = -ENOMEM;
			goto out;
		}
		/* Don't keep local reference when parsing. */
		keep_keyval = false;
		break;

	default:
		/* Compute the offset from 0xffff f000 0000. */
		offset = FUNC10(FUNC2(ki)) + kv_pos;
		if (offset == kv_pos) {
			/* Uh-oh.  Can't have a relative offset of 0 for Leaves
			 * or Directories.  The Config ROM image is most likely
			 * messed up, so we'll just abort here. */
			ret = -EIO;
			goto out;
		}

		k = FUNC4(dir, offset);

		if (k)
			break;		/* Found it. */

		if (FUNC1(ki) == CSR1212_KV_TYPE_DIRECTORY)
			k = FUNC6(FUNC0(ki));
		else
			k = FUNC8(FUNC0(ki), NULL, 0);

		if (!k) {
			ret = -ENOMEM;
			goto out;
		}
		/* Don't keep local reference when parsing. */
		keep_keyval = false;
		/* Contents not read yet so it's not valid. */
		k->valid = 0;
		k->offset = offset;

		k->prev = dir;
		k->next = dir->next;
		dir->next->prev = k;
		dir->next = k;
	}
	ret = FUNC3(dir, k, keep_keyval);
out:
	if (ret != CSR1212_SUCCESS && k != NULL)
		FUNC9(k);
	return ret;
}