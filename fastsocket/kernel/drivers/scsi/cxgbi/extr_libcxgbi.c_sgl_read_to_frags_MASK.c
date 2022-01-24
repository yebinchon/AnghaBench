#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {unsigned int length; scalar_t__ offset; } ;
struct page {int dummy; } ;
struct TYPE_3__ {scalar_t__ page_offset; unsigned int size; struct page* page; } ;
typedef  TYPE_1__ skb_frag_t ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,unsigned int,...) ; 
 struct scatterlist* FUNC2 (struct scatterlist*) ; 
 struct page* FUNC3 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC4(struct scatterlist *sg, unsigned int sgoffset,
				unsigned int dlen, skb_frag_t *frags,
				int frag_max)
{
	unsigned int datalen = dlen;
	unsigned int sglen = sg->length - sgoffset;
	struct page *page = FUNC3(sg);
	int i;

	i = 0;
	do {
		unsigned int copy;

		if (!sglen) {
			sg = FUNC2(sg);
			if (!sg) {
				FUNC1("sg %d NULL, len %u/%u.\n",
					i, datalen, dlen);
				return -EINVAL;
			}
			sgoffset = 0;
			sglen = sg->length;
			page = FUNC3(sg);

		}
		copy = FUNC0(datalen, sglen);
		if (i && page == frags[i - 1].page &&
		    sgoffset + sg->offset ==
			frags[i - 1].page_offset + frags[i - 1].size) {
			frags[i - 1].size += copy;
		} else {
			if (i >= frag_max) {
				FUNC1("too many pages %u, dlen %u.\n",
					frag_max, dlen);
				return -EINVAL;
			}

			frags[i].page = page;
			frags[i].page_offset = sg->offset + sgoffset;
			frags[i].size = copy;
			i++;
		}
		datalen -= copy;
		sgoffset += copy;
		sglen -= copy;
	} while (datalen);

	return i;
}