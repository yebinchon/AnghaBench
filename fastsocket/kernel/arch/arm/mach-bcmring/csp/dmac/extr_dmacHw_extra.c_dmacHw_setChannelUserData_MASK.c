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
typedef  int /*<<< orphan*/  dmacHw_HANDLE_t ;
struct TYPE_3__ {void* userData; } ;
typedef  TYPE_1__ dmacHw_CBLK_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(dmacHw_HANDLE_t handle,	/*  [ IN ] DMA Channel handle */
			       void *userData	/*  [ IN ] User data */
    ) {
	dmacHw_CBLK_t *pCblk = FUNC0(handle);

	pCblk->userData = userData;
}