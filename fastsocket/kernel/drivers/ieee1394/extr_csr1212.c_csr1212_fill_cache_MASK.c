#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct csr1212_keyval_img {int /*<<< orphan*/  data; void* crc; void* length; } ;
struct TYPE_10__ {int /*<<< orphan*/  len; } ;
struct TYPE_9__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_11__ {TYPE_4__ directory; TYPE_3__ leaf; } ;
struct TYPE_8__ {int type; int /*<<< orphan*/  id; } ;
struct csr1212_keyval {struct csr1212_keyval* next; TYPE_6__* prev; TYPE_5__ value; TYPE_2__ key; scalar_t__ offset; } ;
struct csr1212_csr_rom_cache {scalar_t__ offset; scalar_t__ data; TYPE_1__* layout_tail; struct csr1212_keyval* layout_head; } ;
struct TYPE_12__ {int /*<<< orphan*/ * next; } ;
struct TYPE_7__ {struct csr1212_keyval* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR1212_KV_ID_EXTENDED_ROM ; 
#define  CSR1212_KV_TYPE_CSR_OFFSET 131 
#define  CSR1212_KV_TYPE_DIRECTORY 130 
#define  CSR1212_KV_TYPE_IMMEDIATE 129 
#define  CSR1212_KV_TYPE_LEAF 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct csr1212_keyval*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct csr1212_csr_rom_cache *cache)
{
	struct csr1212_keyval *kv, *nkv;
	struct csr1212_keyval_img *kvi;

	for (kv = cache->layout_head;
	     kv != cache->layout_tail->next;
	     kv = nkv) {
		kvi = (struct csr1212_keyval_img *)(cache->data +
				FUNC1(kv->offset - cache->offset));
		switch (kv->key.type) {
		default:
		case CSR1212_KV_TYPE_IMMEDIATE:
		case CSR1212_KV_TYPE_CSR_OFFSET:
			/* Should never get here */
			FUNC0(1);
			break;

		case CSR1212_KV_TYPE_LEAF:
			/* Don't copy over Extended ROM areas, they are
			 * already filled out! */
			if (kv->key.id != CSR1212_KV_ID_EXTENDED_ROM)
				FUNC5(kvi->data, kv->value.leaf.data,
				       FUNC6(kv->value.leaf.len));

			kvi->length = FUNC2(kv->value.leaf.len);
			kvi->crc = FUNC3(kvi->data, kv->value.leaf.len);
			break;

		case CSR1212_KV_TYPE_DIRECTORY:
			FUNC4(kv, kvi->data);

			kvi->length = FUNC2(kv->value.directory.len);
			kvi->crc = FUNC3(kvi->data,
						 kv->value.directory.len);
			break;
		}

		nkv = kv->next;
		if (kv->prev)
			kv->prev->next = NULL;
		if (kv->next)
			kv->next->prev = NULL;
		kv->prev = NULL;
		kv->next = NULL;
	}
}