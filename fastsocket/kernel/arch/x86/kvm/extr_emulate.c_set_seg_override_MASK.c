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
struct decode_cache {int has_seg_override; int seg_override; } ;

/* Variables and functions */

__attribute__((used)) static void FUNC0(struct decode_cache *c, int seg)
{
	c->has_seg_override = true;
	c->seg_override = seg;
}