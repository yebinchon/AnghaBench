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
struct saa7146_dev {int dummy; } ;
struct dvb_ca_en50221 {scalar_t__ data; } ;
struct TYPE_2__ {struct saa7146_dev* dev; } ;
struct budget_av {int /*<<< orphan*/  slot_status; TYPE_1__ budget; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUDGET_VIDEO_PORTB ; 
 int EINVAL ; 
 int /*<<< orphan*/  SLOTSTATUS_NONE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dvb_ca_en50221 *ca, int slot)
{
	struct budget_av *budget_av = (struct budget_av *) ca->data;
	struct saa7146_dev *saa = budget_av->budget.dev;

	if (slot != 0)
		return -EINVAL;

	FUNC0(1, "ciintf_slot_shutdown\n");

	FUNC1(saa, BUDGET_VIDEO_PORTB);
	budget_av->slot_status = SLOTSTATUS_NONE;

	return 0;
}