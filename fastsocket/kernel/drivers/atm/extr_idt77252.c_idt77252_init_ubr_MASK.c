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
struct vc_map {int init_er; int lacr; int max_er; int /*<<< orphan*/  class; TYPE_1__* estimator; int /*<<< orphan*/  lock; } ;
struct idt77252_dev {int link_pcr; } ;
struct atm_vcc {int dummy; } ;
struct atm_qos {int /*<<< orphan*/  txtp; } ;
struct TYPE_3__ {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCHED_UBR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct vc_map*,int) ; 
 int FUNC3 (struct idt77252_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC7(struct idt77252_dev *card, struct vc_map *vc,
		  struct atm_vcc *vcc, struct atm_qos *qos)
{
	unsigned long flags;
	int tcr;

	FUNC5(&vc->lock, flags);
	if (vc->estimator) {
		FUNC1(&vc->estimator->timer);
		FUNC4(vc->estimator);
		vc->estimator = NULL;
	}
	FUNC6(&vc->lock, flags);

	tcr = FUNC0(&qos->txtp);
	if (tcr == 0)
		tcr = card->link_pcr;

	vc->estimator = FUNC2(vc, tcr);

	vc->class = SCHED_UBR;
	vc->init_er = FUNC3(card, tcr);
	vc->lacr = vc->init_er;
	if (tcr < 0)
		vc->max_er = vc->init_er;
	else
		vc->max_er = 0xff;

	return 0;
}