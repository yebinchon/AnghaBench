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
struct TYPE_2__ {int id; } ;
struct csr1212_keyval {struct csr1212_keyval* associate; TYPE_1__ key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CSR1212_KV_ID_DEPENDENT_INFO ; 
 int CSR1212_KV_ID_DESCRIPTOR ; 
 int CSR1212_KV_ID_EXTENDED_DATA ; 
 int CSR1212_KV_ID_EXTENDED_KEY ; 
 int CSR1212_KV_ID_EXTENDED_KEY_SPECIFIER_ID ; 
 int /*<<< orphan*/  FUNC1 (struct csr1212_keyval*) ; 
 int /*<<< orphan*/  FUNC2 (struct csr1212_keyval*) ; 

void FUNC3(struct csr1212_keyval *kv,
			      struct csr1212_keyval *associate)
{
	FUNC0(!kv || !associate || kv->key.id == CSR1212_KV_ID_DESCRIPTOR ||
	       (associate->key.id != CSR1212_KV_ID_DESCRIPTOR &&
		associate->key.id != CSR1212_KV_ID_DEPENDENT_INFO &&
		associate->key.id != CSR1212_KV_ID_EXTENDED_KEY &&
		associate->key.id != CSR1212_KV_ID_EXTENDED_DATA &&
		associate->key.id < 0x30) ||
	       (kv->key.id == CSR1212_KV_ID_EXTENDED_KEY_SPECIFIER_ID &&
		associate->key.id != CSR1212_KV_ID_EXTENDED_KEY) ||
	       (kv->key.id == CSR1212_KV_ID_EXTENDED_KEY &&
		associate->key.id != CSR1212_KV_ID_EXTENDED_DATA) ||
	       (associate->key.id == CSR1212_KV_ID_EXTENDED_KEY &&
		kv->key.id != CSR1212_KV_ID_EXTENDED_KEY_SPECIFIER_ID) ||
	       (associate->key.id == CSR1212_KV_ID_EXTENDED_DATA &&
		kv->key.id != CSR1212_KV_ID_EXTENDED_KEY));

	if (kv->associate)
		FUNC2(kv->associate);

	FUNC1(associate);
	kv->associate = associate;
}