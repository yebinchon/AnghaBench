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
struct cxgbi_tag_format {int rsvd_bits; int rsvd_shift; } ;

/* Variables and functions */

__attribute__((used)) static inline u32 FUNC0(struct cxgbi_tag_format *tformat,
					u32 sw_tag)
{
	unsigned char shift = tformat->rsvd_bits + tformat->rsvd_shift - 1;
	u32 mask = (1 << shift) - 1;

	if (sw_tag && (sw_tag & ~mask)) {
		u32 v1 = sw_tag & ((1 << shift) - 1);
		u32 v2 = (sw_tag >> (shift - 1)) << shift;

		return v2 | v1 | 1 << shift;
	}

	return sw_tag | 1 << shift;
}