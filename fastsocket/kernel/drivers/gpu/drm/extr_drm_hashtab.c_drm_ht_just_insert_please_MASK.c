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
struct drm_open_hash {int dummy; } ;
struct drm_hash_item {unsigned long key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int FUNC1 (struct drm_open_hash*,struct drm_hash_item*) ; 
 unsigned long FUNC2 (unsigned long,int) ; 

int FUNC3(struct drm_open_hash *ht, struct drm_hash_item *item,
			      unsigned long seed, int bits, int shift,
			      unsigned long add)
{
	int ret;
	unsigned long mask = (1 << bits) - 1;
	unsigned long first, unshifted_key;

	unshifted_key = FUNC2(seed, bits);
	first = unshifted_key;
	do {
		item->key = (unshifted_key << shift) + add;
		ret = FUNC1(ht, item);
		if (ret)
			unshifted_key = (unshifted_key + 1) & mask;
	} while(ret && (unshifted_key != first));

	if (ret) {
		FUNC0("Available key bit space exhausted\n");
		return -EINVAL;
	}
	return 0;
}