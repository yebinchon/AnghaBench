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
struct talitos_ptr {scalar_t__ j_extent; void* len; } ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 scalar_t__ DESC_PTR_LNKTBL_RETURN ; 
 int FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 struct scatterlist* FUNC2 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*) ; 
 int FUNC4 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC5 (struct talitos_ptr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct scatterlist *sg, int sg_count,
			   int cryptlen, struct talitos_ptr *link_tbl_ptr)
{
	int n_sg = sg_count;

	while (n_sg--) {
		FUNC5(link_tbl_ptr, FUNC3(sg));
		link_tbl_ptr->len = FUNC1(FUNC4(sg));
		link_tbl_ptr->j_extent = 0;
		link_tbl_ptr++;
		cryptlen -= FUNC4(sg);
		sg = FUNC2(sg);
	}

	/* adjust (decrease) last one (or two) entry's len to cryptlen */
	link_tbl_ptr--;
	while (FUNC0(link_tbl_ptr->len) <= (-cryptlen)) {
		/* Empty this entry, and move to previous one */
		cryptlen += FUNC0(link_tbl_ptr->len);
		link_tbl_ptr->len = 0;
		sg_count--;
		link_tbl_ptr--;
	}
	link_tbl_ptr->len = FUNC1(FUNC0(link_tbl_ptr->len)
					+ cryptlen);

	/* tag end of link table */
	link_tbl_ptr->j_extent = DESC_PTR_LNKTBL_RETURN;

	return sg_count;
}