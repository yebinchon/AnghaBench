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
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {unsigned int ISTR; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int ISTR_INTS ; 
 unsigned int ISTR_INT_F ; 
 unsigned int ISTR_INT_P ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 

__attribute__((used)) static irqreturn_t FUNC4 (int irq, void *_instance)
{
    unsigned long flags;
    unsigned int status;
    struct Scsi_Host *instance = (struct Scsi_Host *)_instance;

    status = FUNC0(instance)->ISTR;
    if (!(status & (ISTR_INT_F|ISTR_INT_P)) || !(status & ISTR_INTS))
	return IRQ_NONE;

    FUNC1(instance->host_lock, flags);
    FUNC3(instance);
    FUNC2(instance->host_lock, flags);
    return IRQ_HANDLED;
}