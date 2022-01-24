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
struct TYPE_3__ {scalar_t__ io_mem_addr; } ;
typedef  TYPE_1__ ctlr_info_t ;

/* Variables and functions */
 int CHANNEL_BUSY ; 
 scalar_t__ SMART1_INTR_MASK ; 
 scalar_t__ SMART1_LOCAL_DOORBELL ; 
 scalar_t__ SMART1_SYSTEM_DOORBELL ; 
 scalar_t__ SMART1_SYSTEM_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(ctlr_info_t *h, unsigned long val)
{
	if (val == 1) {
		FUNC0(0xFD, h->io_mem_addr + SMART1_SYSTEM_DOORBELL);
		FUNC0(CHANNEL_BUSY, h->io_mem_addr + SMART1_LOCAL_DOORBELL);
		FUNC0(0x01, h->io_mem_addr + SMART1_INTR_MASK);
		FUNC0(0x01, h->io_mem_addr + SMART1_SYSTEM_MASK);
	} else {
		FUNC0(0, h->io_mem_addr + 0xC8E);
	}
}