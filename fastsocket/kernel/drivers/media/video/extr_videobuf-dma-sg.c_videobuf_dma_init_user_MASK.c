#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct videobuf_dmabuf {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct videobuf_dmabuf*,int,unsigned long,unsigned long) ; 

int FUNC3(struct videobuf_dmabuf *dma, int direction,
			   unsigned long data, unsigned long size)
{
	int ret;

	FUNC0(&current->mm->mmap_sem);
	ret = FUNC2(dma, direction, data, size);
	FUNC1(&current->mm->mmap_sem);

	return ret;
}