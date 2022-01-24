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
struct cxgbi_tag_format {int rsvd_shift; int rsvd_mask; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cxgbi_tag_format*,int) ; 

__attribute__((used)) static inline u32 FUNC1(struct cxgbi_tag_format *tformat,
					u32 tag)
{
	if (FUNC0(tformat, tag))
		return (tag >> tformat->rsvd_shift) & tformat->rsvd_mask;

	return 0;
}