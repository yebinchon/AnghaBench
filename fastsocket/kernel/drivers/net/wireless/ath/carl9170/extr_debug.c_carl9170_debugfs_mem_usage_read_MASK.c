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
struct TYPE_2__ {int mem_blocks; int mem_block_size; } ;
struct ar9170 {int /*<<< orphan*/  mem_lock; TYPE_1__ fw; int /*<<< orphan*/  mem_free_blocks; int /*<<< orphan*/  mem_allocs; int /*<<< orphan*/  mem_bitmap; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,size_t,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,size_t,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC6(struct ar9170 *ar, char *buf,
					     size_t bufsize, ssize_t *len)
{
	FUNC0(buf, *len, bufsize, "jar: [");

	FUNC4(&ar->mem_lock);

	*len += FUNC2(&buf[*len], bufsize - *len,
				  ar->mem_bitmap, ar->fw.mem_blocks);

	FUNC0(buf, *len, bufsize, "]\n");

	FUNC0(buf, *len, bufsize, "cookies: used:%3d / total:%3d, allocs:%d\n",
	    FUNC3(ar->mem_bitmap, ar->fw.mem_blocks),
	    ar->fw.mem_blocks, FUNC1(&ar->mem_allocs));

	FUNC0(buf, *len, bufsize, "memory: free:%3d (%3d KiB) / total:%3d KiB)\n",
	    FUNC1(&ar->mem_free_blocks),
	    (FUNC1(&ar->mem_free_blocks) * ar->fw.mem_block_size) / 1024,
	    (ar->fw.mem_blocks * ar->fw.mem_block_size) / 1024);

	FUNC5(&ar->mem_lock);

	return buf;
}