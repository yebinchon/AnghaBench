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
struct TYPE_2__ {int error; } ;
struct memstick_dev {TYPE_1__ current_mrq; int /*<<< orphan*/  mrq_complete; int /*<<< orphan*/  host; int /*<<< orphan*/  next_request; } ;

/* Variables and functions */
 int /*<<< orphan*/  h_memstick_set_rw_addr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct memstick_dev *card)
{
	card->next_request = h_memstick_set_rw_addr;
	FUNC0(card->host);
	FUNC1(&card->mrq_complete);

	return card->current_mrq.error;
}