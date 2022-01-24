#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct TYPE_2__ {int major_version; scalar_t__ head_addr; scalar_t__ minor_version; } ;

/* Variables and functions */
 int CVMX_BOOTMEM_FLAG_NO_LOCKING ; 
 TYPE_1__* cvmx_bootmem_desc ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,...) ; 

int FUNC7(uint64_t phy_addr, uint64_t size, uint32_t flags)
{
	uint64_t cur_addr;
	uint64_t prev_addr = 0;	/* zero is invalid */
	int retval = 0;

#ifdef DEBUG
	cvmx_dprintf("__cvmx_bootmem_phy_free addr: 0x%llx, size: 0x%llx\n",
		     (unsigned long long)phy_addr, (unsigned long long)size);
#endif
	if (cvmx_bootmem_desc->major_version > 3) {
		FUNC6("ERROR: Incompatible bootmem descriptor "
			     "version: %d.%d at addr: %p\n",
			     (int)cvmx_bootmem_desc->major_version,
			     (int)cvmx_bootmem_desc->minor_version,
			     cvmx_bootmem_desc);
		return 0;
	}

	/* 0 is not a valid size for this allocator */
	if (!size)
		return 0;

	if (!(flags & CVMX_BOOTMEM_FLAG_NO_LOCKING))
		FUNC0();
	cur_addr = cvmx_bootmem_desc->head_addr;
	if (cur_addr == 0 || phy_addr < cur_addr) {
		/* add at front of list - special case with changing head ptr */
		if (cur_addr && phy_addr + size > cur_addr)
			goto bootmem_free_done;	/* error, overlapping section */
		else if (phy_addr + size == cur_addr) {
			/* Add to front of existing first block */
			FUNC3(phy_addr,
						  FUNC1
						  (cur_addr));
			FUNC4(phy_addr,
						  FUNC2
						  (cur_addr) + size);
			cvmx_bootmem_desc->head_addr = phy_addr;

		} else {
			/* New block before first block.  OK if cur_addr is 0 */
			FUNC3(phy_addr, cur_addr);
			FUNC4(phy_addr, size);
			cvmx_bootmem_desc->head_addr = phy_addr;
		}
		retval = 1;
		goto bootmem_free_done;
	}

	/* Find place in list to add block */
	while (cur_addr && phy_addr > cur_addr) {
		prev_addr = cur_addr;
		cur_addr = FUNC1(cur_addr);
	}

	if (!cur_addr) {
		/*
		 * We have reached the end of the list, add on to end,
		 * checking to see if we need to combine with last
		 * block
		 */
		if (prev_addr + FUNC2(prev_addr) ==
		    phy_addr) {
			FUNC4(prev_addr,
						  FUNC2
						  (prev_addr) + size);
		} else {
			FUNC3(prev_addr, phy_addr);
			FUNC4(phy_addr, size);
			FUNC3(phy_addr, 0);
		}
		retval = 1;
		goto bootmem_free_done;
	} else {
		/*
		 * insert between prev and cur nodes, checking for
		 * merge with either/both.
		 */
		if (prev_addr + FUNC2(prev_addr) ==
		    phy_addr) {
			/* Merge with previous */
			FUNC4(prev_addr,
						  FUNC2
						  (prev_addr) + size);
			if (phy_addr + size == cur_addr) {
				/* Also merge with current */
				FUNC4(prev_addr,
					FUNC2(cur_addr) +
					FUNC2(prev_addr));
				FUNC3(prev_addr,
					FUNC1(cur_addr));
			}
			retval = 1;
			goto bootmem_free_done;
		} else if (phy_addr + size == cur_addr) {
			/* Merge with current */
			FUNC4(phy_addr,
						  FUNC2
						  (cur_addr) + size);
			FUNC3(phy_addr,
						  FUNC1
						  (cur_addr));
			FUNC3(prev_addr, phy_addr);
			retval = 1;
			goto bootmem_free_done;
		}

		/* It is a standalone block, add in between prev and cur */
		FUNC4(phy_addr, size);
		FUNC3(phy_addr, cur_addr);
		FUNC3(prev_addr, phy_addr);

	}
	retval = 1;

bootmem_free_done:
	if (!(flags & CVMX_BOOTMEM_FLAG_NO_LOCKING))
		FUNC5();
	return retval;

}