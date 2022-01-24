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
struct map_info {scalar_t__ map_priv_1; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 unsigned long FUNC0 (struct map_info*,unsigned long) ; 

__attribute__((used)) static void FUNC1(struct map_info *map, void *to,
			      unsigned long from, ssize_t len)
{
	from = FUNC0(map, from);
	while(len--)
		*(__u8 *) to++ = *(__u8 *)(map->map_priv_1 + from++);
}