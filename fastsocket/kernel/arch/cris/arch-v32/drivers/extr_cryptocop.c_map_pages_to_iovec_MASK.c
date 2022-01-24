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
struct page {int dummy; } ;
struct iovec {unsigned char* iov_base; int iov_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 

__attribute__((used)) static int FUNC5(struct iovec *iov, int iovlen, int *iovix, struct page **pages, int nopages, int *pageix, int *pageoffset, int map_length )
{
	int tmplen;

	FUNC2(iov != NULL);
	FUNC2(iovix != NULL);
	FUNC2(pages != NULL);
	FUNC2(pageix != NULL);
	FUNC2(pageoffset != NULL);

	FUNC0(FUNC4("map_pages_to_iovec, map_length=%d, iovlen=%d, *iovix=%d, nopages=%d, *pageix=%d, *pageoffset=%d\n", map_length, iovlen, *iovix, nopages, *pageix, *pageoffset));

	while (map_length > 0){
		FUNC0(FUNC4("map_pages_to_iovec, map_length=%d, iovlen=%d, *iovix=%d, nopages=%d, *pageix=%d, *pageoffset=%d\n", map_length, iovlen, *iovix, nopages, *pageix, *pageoffset));
		if (*iovix >= iovlen){
			FUNC1(FUNC4("map_page_to_iovec: *iovix=%d >= iovlen=%d\n", *iovix, iovlen));
			return 0;
		}
		if (*pageix >= nopages){
			FUNC1(FUNC4("map_page_to_iovec: *pageix=%d >= nopages=%d\n", *pageix, nopages));
			return 0;
		}
		iov[*iovix].iov_base = (unsigned char*)FUNC3(pages[*pageix]) + *pageoffset;
		tmplen = PAGE_SIZE - *pageoffset;
		if (tmplen < map_length){
			(*pageoffset) = 0;
			(*pageix)++;
		} else {
			tmplen = map_length;
			(*pageoffset) += map_length;
		}
		FUNC0(FUNC4("mapping %d bytes from page %d (or %d) to iovec %d\n", tmplen, *pageix, *pageix-1, *iovix));
		iov[*iovix].iov_len = tmplen;
		map_length -= tmplen;
		(*iovix)++;
	}
	FUNC0(FUNC4("map_page_to_iovec, exit, *iovix=%d\n", *iovix));
	return -1;
}