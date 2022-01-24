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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {TYPE_1__ leaf; } ;
struct csr1212_keyval {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csr1212_keyval*) ; 
 scalar_t__ CSR1212_DESCRIPTOR_LEAF_OVERHEAD ; 
 int /*<<< orphan*/  FUNC1 (struct csr1212_keyval*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct csr1212_keyval*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSR1212_KV_ID_DESCRIPTOR ; 
 struct csr1212_keyval* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void const*,size_t) ; 

__attribute__((used)) static struct csr1212_keyval *
FUNC6(u8 dtype, u32 specifier_id,
			    const void *data, size_t data_len)
{
	struct csr1212_keyval *kv;

	kv = FUNC3(CSR1212_KV_ID_DESCRIPTOR, NULL,
			      data_len + CSR1212_DESCRIPTOR_LEAF_OVERHEAD);
	if (!kv)
		return NULL;

	FUNC4(kv->value.leaf.data[0]);
	FUNC2(kv, dtype);
	FUNC1(kv, specifier_id);

	if (data)
		FUNC5(FUNC0(kv), data, data_len);

	return kv;
}