#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fore200e {TYPE_1__* bus; int /*<<< orphan*/  rx_tasklet; int /*<<< orphan*/  tx_tasklet; TYPE_2__* atm_dev; } ;
struct atm_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  number; } ;
struct TYPE_3__ {scalar_t__ (* irq_check ) (struct fore200e*) ;int /*<<< orphan*/  (* irq_ack ) (struct fore200e*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 struct fore200e* FUNC1 (struct atm_dev*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC2 (struct fore200e*) ; 
 scalar_t__ FUNC3 (struct fore200e*) ; 
 int /*<<< orphan*/  FUNC4 (struct fore200e*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC6(int irq, void* dev)
{
    struct fore200e* fore200e = FUNC1((struct atm_dev*)dev);

    if (fore200e->bus->irq_check(fore200e) == 0) {
	
	FUNC0(3, "interrupt NOT triggered by device %d\n", fore200e->atm_dev->number);
	return IRQ_NONE;
    }
    FUNC0(3, "interrupt triggered by device %d\n", fore200e->atm_dev->number);

#ifdef FORE200E_USE_TASKLET
    tasklet_schedule(&fore200e->tx_tasklet);
    tasklet_schedule(&fore200e->rx_tasklet);
#else
    FUNC2(fore200e);
#endif
    
    fore200e->bus->irq_ack(fore200e);
    return IRQ_HANDLED;
}