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
typedef  int u8 ;
struct TYPE_2__ {int type; int id; } ;
struct csr1212_keyval {scalar_t__ valid; scalar_t__ offset; int /*<<< orphan*/ * prev; int /*<<< orphan*/ * next; int /*<<< orphan*/ * associate; TYPE_1__ key; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 struct csr1212_keyval* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int* csr1212_key_id_type_map ; 

__attribute__((used)) static struct csr1212_keyval *FUNC2(u8 type, u8 key)
{
	struct csr1212_keyval *kv;

	if (key < 0x30 && ((csr1212_key_id_type_map[key] & (1 << type)) == 0))
		return NULL;

	kv = FUNC0(sizeof(*kv));
	if (!kv)
		return NULL;

	FUNC1(&kv->refcnt, 1);
	kv->key.type = type;
	kv->key.id = key;
	kv->associate = NULL;
	kv->next = NULL;
	kv->prev = NULL;
	kv->offset = 0;
	kv->valid = 0;
	return kv;
}