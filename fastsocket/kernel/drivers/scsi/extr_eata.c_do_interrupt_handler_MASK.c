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
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 unsigned int num_boards ; 
 struct Scsi_Host** sh ; 
 char* sha ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC3(int dummy, void *shap)
{
	struct Scsi_Host *shost;
	unsigned int j;
	unsigned long spin_flags;
	irqreturn_t ret;

	/* Check if the interrupt must be processed by this handler */
	if ((j = (unsigned int)((char *)shap - sha)) >= num_boards)
		return IRQ_NONE;
	shost = sh[j];

	FUNC1(shost->host_lock, spin_flags);
	ret = FUNC0(shost);
	FUNC2(shost->host_lock, spin_flags);
	return ret;
}