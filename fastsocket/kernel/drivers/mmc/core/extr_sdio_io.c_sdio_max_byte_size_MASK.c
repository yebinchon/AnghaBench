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
struct sdio_func {unsigned int cur_blksize; unsigned int max_blksize; TYPE_2__* card; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {unsigned int max_seg_size; unsigned int max_blk_size; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static inline unsigned int FUNC2(struct sdio_func *func)
{
	unsigned mval =	FUNC0(func->card->host->max_seg_size,
			    func->card->host->max_blk_size);

	if (FUNC1(func->card))
		mval = FUNC0(mval, func->cur_blksize);
	else
		mval = FUNC0(mval, func->max_blksize);

	return FUNC0(mval, 512u); /* maximum size for byte mode */
}