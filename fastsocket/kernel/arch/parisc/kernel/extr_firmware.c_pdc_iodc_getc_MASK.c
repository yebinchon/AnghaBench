#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* layers; } ;
struct TYPE_5__ {TYPE_1__ dp; int /*<<< orphan*/  spa; scalar_t__ hpa; int /*<<< orphan*/  iodc_io; } ;
struct TYPE_6__ {TYPE_2__ mem_kbd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_IO_CIN ; 
 TYPE_3__* PAGE0 ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* iodc_dbuf ; 
 int* iodc_retbuf ; 
 int /*<<< orphan*/  pdc_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(void)
{
	int ch;
	int status;
	unsigned long flags;

	/* Bail if no console input device. */
	if (!PAGE0->mem_kbd.iodc_io)
		return 0;
	
	/* wait for a keyboard (rs232)-input */
	FUNC2(&pdc_lock, flags);
	FUNC1(PAGE0->mem_kbd.iodc_io,
		    (unsigned long)PAGE0->mem_kbd.hpa, ENTRY_IO_CIN,
		    PAGE0->mem_kbd.spa, FUNC0(PAGE0->mem_kbd.dp.layers), 
		    FUNC0(iodc_retbuf), 0, FUNC0(iodc_dbuf), 1, 0);

	ch = *iodc_dbuf;
	status = *iodc_retbuf;
	FUNC3(&pdc_lock, flags);

	if (status == 0)
	    return -1;
	
	return ch;
}