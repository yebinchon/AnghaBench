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
struct TYPE_3__ {int /*<<< orphan*/  commands_outstanding; scalar_t__ vaddr; } ;
typedef  TYPE_1__ ctlr_info_t ;

/* Variables and functions */
 unsigned long FIFO_EMPTY ; 
 scalar_t__ SA5_REPLY_PORT_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 unsigned long FUNC1 (scalar_t__) ; 

__attribute__((used)) static unsigned long FUNC2(ctlr_info_t *h)
{
	unsigned long register_value 
		= FUNC1(h->vaddr + SA5_REPLY_PORT_OFFSET);
	if(register_value != FIFO_EMPTY)
	{
		h->commands_outstanding--;
#ifdef CCISS_DEBUG
		printk("cciss:  Read %lx back from board\n", register_value);
#endif /* CCISS_DEBUG */ 
	} 
#ifdef CCISS_DEBUG
	else
	{
		printk("cciss:  FIFO Empty read\n");
	}
#endif 
	return ( register_value); 

}