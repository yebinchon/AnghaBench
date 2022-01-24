#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct csr1212_keyval_img {int* data; int /*<<< orphan*/  crc; int /*<<< orphan*/  length; } ;
struct TYPE_7__ {int len; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int len; } ;
struct TYPE_8__ {TYPE_3__ leaf; TYPE_1__ directory; } ;
struct TYPE_6__ {int type; int /*<<< orphan*/  id; } ;
struct csr1212_keyval {size_t offset; int valid; TYPE_4__ value; TYPE_2__ key; } ;
struct csr1212_csr_rom_cache {size_t offset; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR1212_KV_ID_EXTENDED_ROM ; 
#define  CSR1212_KV_TYPE_DIRECTORY 129 
#define  CSR1212_KV_TYPE_LEAF 128 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int CSR1212_SUCCESS ; 
 int ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct csr1212_keyval*,int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,size_t) ; 
 size_t FUNC6 (int) ; 

int FUNC7(struct csr1212_keyval *kv,
			 struct csr1212_csr_rom_cache *cache)
{
	struct csr1212_keyval_img *kvi;
	int i;
	int ret = CSR1212_SUCCESS;
	int kvi_len;

	kvi = (struct csr1212_keyval_img*)
		&cache->data[FUNC2(kv->offset - cache->offset)];
	kvi_len = FUNC1(kvi->length);

	/* GUID is wrong in here in case of extended ROM.  We don't care. */
	FUNC3(kvi->data, kvi_len, kvi->crc, &cache->data[3]);

	switch (kv->key.type) {
	case CSR1212_KV_TYPE_DIRECTORY:
		for (i = 0; i < kvi_len; i++) {
			u32 ki = kvi->data[i];

			/* Some devices put null entries in their unit
			 * directories.  If we come across such an entry,
			 * then skip it. */
			if (ki == 0x0)
				continue;
			ret = FUNC4(kv, ki,
					kv->offset + FUNC6(i + 1));
		}
		kv->value.directory.len = kvi_len;
		break;

	case CSR1212_KV_TYPE_LEAF:
		if (kv->key.id != CSR1212_KV_ID_EXTENDED_ROM) {
			size_t size = FUNC6(kvi_len);

			kv->value.leaf.data = FUNC0(size);
			if (!kv->value.leaf.data) {
				ret = -ENOMEM;
				goto out;
			}

			kv->value.leaf.len = kvi_len;
			FUNC5(kv->value.leaf.data, kvi->data, size);
		}
		break;
	}

	kv->valid = 1;
out:
	return ret;
}