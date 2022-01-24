#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	unsigned long flags;
	struct Scsi_Host *dev = dev_id;
	irqreturn_t ret;

	FUNC1(dev->host_lock, flags);
	ret = FUNC0(irq, dev_id);
	FUNC2(dev->host_lock, flags);
	return ret;
}