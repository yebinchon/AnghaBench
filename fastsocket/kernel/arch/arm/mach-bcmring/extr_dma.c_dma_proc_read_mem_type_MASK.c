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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gDmaStatMemTypeCoherent ; 
 int /*<<< orphan*/  gDmaStatMemTypeKmalloc ; 
 int /*<<< orphan*/  gDmaStatMemTypeUser ; 
 int /*<<< orphan*/  gDmaStatMemTypeVmalloc ; 
 scalar_t__ FUNC1 (char*,char*,...) ; 

__attribute__((used)) static int FUNC2(char *buf, char **start, off_t offset,
				  int count, int *eof, void *data)
{
	int len = 0;

	len += FUNC1(buf + len, "dma_map_mem statistics\n");
	len +=
	    FUNC1(buf + len, "coherent: %d\n",
		    FUNC0(&gDmaStatMemTypeCoherent));
	len +=
	    FUNC1(buf + len, "kmalloc:  %d\n",
		    FUNC0(&gDmaStatMemTypeKmalloc));
	len +=
	    FUNC1(buf + len, "vmalloc:  %d\n",
		    FUNC0(&gDmaStatMemTypeVmalloc));
	len +=
	    FUNC1(buf + len, "user:     %d\n",
		    FUNC0(&gDmaStatMemTypeUser));

	return len;
}