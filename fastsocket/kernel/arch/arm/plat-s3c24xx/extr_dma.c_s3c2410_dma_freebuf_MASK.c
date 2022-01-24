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
struct s3c2410_dma_buf {int magic; } ;

/* Variables and functions */
 int BUF_MAGIC ; 
 int /*<<< orphan*/  dma_kmem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct s3c2410_dma_buf*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct s3c2410_dma_buf*) ; 

__attribute__((used)) static inline void
FUNC2(struct s3c2410_dma_buf *buf)
{
	int magicok = (buf->magic == BUF_MAGIC);

	buf->magic = -1;

	if (magicok) {
		FUNC0(dma_kmem, buf);
	} else {
		FUNC1("s3c2410_dma_freebuf: buff %p with bad magic\n", buf);
	}
}