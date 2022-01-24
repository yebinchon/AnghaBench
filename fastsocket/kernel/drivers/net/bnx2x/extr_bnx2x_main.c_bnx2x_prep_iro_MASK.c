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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct iro {int m1; int m2; int m3; int size; void* base; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC1(const u8 *_source, u8 *_target, u32 n)
{
	const __be32 *source = (const __be32 *)_source;
	struct iro *target = (struct iro *)_target;
	u32 i, j, tmp;

	for (i = 0, j = 0; i < n/sizeof(struct iro); i++) {
		target[i].base = FUNC0(source[j]);
		j++;
		tmp = FUNC0(source[j]);
		target[i].m1 = (tmp >> 16) & 0xffff;
		target[i].m2 = tmp & 0xffff;
		j++;
		tmp = FUNC0(source[j]);
		target[i].m3 = (tmp >> 16) & 0xffff;
		target[i].size = tmp & 0xffff;
		j++;
	}
}