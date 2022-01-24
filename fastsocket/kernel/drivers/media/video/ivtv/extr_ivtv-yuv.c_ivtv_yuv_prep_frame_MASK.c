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
struct ivtv_dma_frame {int dummy; } ;
struct ivtv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ivtv*,struct ivtv_dma_frame*) ; 
 int FUNC2 (struct ivtv*,struct ivtv_dma_frame*) ; 

int FUNC3(struct ivtv *itv, struct ivtv_dma_frame *args)
{
/*	IVTV_DEBUG_INFO("yuv_prep_frame\n"); */

	FUNC0(itv);
	FUNC1(itv, args);
	return FUNC2(itv, args);
}