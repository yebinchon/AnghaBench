#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct csr1212_dentry* dentries_tail; struct csr1212_dentry* dentries_head; } ;
struct TYPE_6__ {TYPE_2__ directory; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct csr1212_keyval {TYPE_3__ value; TYPE_1__ key; } ;
struct csr1212_dentry {struct csr1212_dentry* next; struct csr1212_dentry* prev; struct csr1212_keyval* kv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CSR1212_KV_TYPE_DIRECTORY ; 
 struct csr1212_dentry* FUNC1 (int) ; 
 int CSR1212_SUCCESS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (struct csr1212_keyval*) ; 

__attribute__((used)) static int FUNC3(struct csr1212_keyval *dir,
						struct csr1212_keyval *kv,
						bool keep_keyval)
{
	struct csr1212_dentry *dentry;

	FUNC0(!kv || !dir || dir->key.type != CSR1212_KV_TYPE_DIRECTORY);

	dentry = FUNC1(sizeof(*dentry));
	if (!dentry)
		return -ENOMEM;

	if (keep_keyval)
		FUNC2(kv);
	dentry->kv = kv;

	dentry->next = NULL;
	dentry->prev = dir->value.directory.dentries_tail;

	if (!dir->value.directory.dentries_head)
		dir->value.directory.dentries_head = dentry;

	if (dir->value.directory.dentries_tail)
		dir->value.directory.dentries_tail->next = dentry;
	dir->value.directory.dentries_tail = dentry;

	return CSR1212_SUCCESS;
}