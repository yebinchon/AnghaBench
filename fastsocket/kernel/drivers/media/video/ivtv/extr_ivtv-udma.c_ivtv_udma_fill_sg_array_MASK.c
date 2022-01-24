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
typedef  scalar_t__ u32 ;
struct scatterlist {int dummy; } ;
struct ivtv_user_dma {int SG_length; TYPE_1__* SGarray; struct scatterlist* SGlist; } ;
struct TYPE_2__ {void* dst; void* src; void* size; } ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct scatterlist*) ; 
 scalar_t__ FUNC2 (struct scatterlist*) ; 

void FUNC3 (struct ivtv_user_dma *dma, u32 buffer_offset, u32 buffer_offset_2, u32 split) {
	int i;
	struct scatterlist *sg;

	for (i = 0, sg = dma->SGlist; i < dma->SG_length; i++, sg++) {
		dma->SGarray[i].size = FUNC0(FUNC2(sg));
		dma->SGarray[i].src = FUNC0(FUNC1(sg));
		dma->SGarray[i].dst = FUNC0(buffer_offset);
		buffer_offset += FUNC2(sg);

		split -= FUNC2(sg);
		if (split == 0)
			buffer_offset = buffer_offset_2;
	}
}