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
typedef  int u32 ;
struct nouveau_ramht {int bits; } ;

/* Variables and functions */

__attribute__((used)) static u32
FUNC0(struct nouveau_ramht *ramht, int chid, u32 handle)
{
	u32 hash = 0;

	while (handle) {
		hash ^= (handle & ((1 << ramht->bits) - 1));
		handle >>= ramht->bits;
	}

	hash ^= chid << (ramht->bits - 4);
	hash  = hash << 3;
	return hash;
}