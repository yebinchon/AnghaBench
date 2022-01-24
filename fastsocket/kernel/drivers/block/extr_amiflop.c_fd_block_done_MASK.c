#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_5__ {int dsklen; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; scalar_t__ expires; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int block_flag ; 
 TYPE_2__ custom ; 
 scalar_t__ jiffies ; 
 TYPE_1__ post_write_timer ; 
 int /*<<< orphan*/  selected ; 
 int /*<<< orphan*/  wait_fd_block ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int writepending ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dummy)
{
	if (block_flag)
		custom.dsklen = 0x4000;

	if (block_flag == 2) { /* writing */
		writepending = 2;
		post_write_timer.expires = jiffies + 1; /* at least 2 ms */
		post_write_timer.data = selected;
		FUNC0(&post_write_timer);
	}
	else {                /* reading */
		block_flag = 0;
		FUNC1 (&wait_fd_block);
	}
	return IRQ_HANDLED;
}