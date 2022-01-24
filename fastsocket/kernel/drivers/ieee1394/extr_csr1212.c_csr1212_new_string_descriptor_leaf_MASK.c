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
typedef  scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__* data; } ;
struct TYPE_4__ {TYPE_1__ leaf; } ;
struct csr1212_keyval {TYPE_2__ value; } ;

/* Variables and functions */
 scalar_t__* FUNC0 (struct csr1212_keyval*) ; 
 scalar_t__ CSR1212_TEXTUAL_DESCRIPTOR_LEAF_OVERHEAD ; 
 size_t FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (char const*) ; 
 struct csr1212_keyval* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,char const*,size_t) ; 
 scalar_t__ FUNC5 (size_t) ; 
 size_t FUNC6 (char const*) ; 

struct csr1212_keyval *FUNC7(const char *s)
{
	struct csr1212_keyval *kv;
	u32 *text;
	size_t str_len, quads;

	if (!s || !*s || FUNC2(s))
		return NULL;

	str_len = FUNC6(s);
	quads = FUNC1(str_len);
	kv = FUNC3(0, 0, NULL, FUNC5(quads) +
				      CSR1212_TEXTUAL_DESCRIPTOR_LEAF_OVERHEAD);
	if (!kv)
		return NULL;

	kv->value.leaf.data[1] = 0;	/* width, character_set, language */
	text = FUNC0(kv);
	text[quads - 1] = 0;		/* padding */
	FUNC4(text, s, str_len);

	return kv;
}