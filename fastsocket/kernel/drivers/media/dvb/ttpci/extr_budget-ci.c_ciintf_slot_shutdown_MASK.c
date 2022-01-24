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
struct budget_ci {TYPE_1__ budget; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUDGET_VIDEO_PORTB ; 
 int EINVAL ; 
 int /*<<< orphan*/  SAA7146_GPIO_OUTHI ; 
 int /*<<< orphan*/  FUNC0 (struct saa7146_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dvb_ca_en50221 *ca, int slot)
{
	struct budget_ci *budget_ci = (struct budget_ci *) ca->data;
	struct saa7146_dev *saa = budget_ci->budget.dev;

	if (slot != 0)
		return -EINVAL;

	FUNC0(saa, 1, SAA7146_GPIO_OUTHI);
	FUNC1(saa, BUDGET_VIDEO_PORTB);
	return 0;
}