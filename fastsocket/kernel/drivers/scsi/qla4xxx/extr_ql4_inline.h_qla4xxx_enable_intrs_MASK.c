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
struct scsi_qla_host {int /*<<< orphan*/  hardware_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void
FUNC3(struct scsi_qla_host *ha)
{
	unsigned long flags;

	FUNC1(&ha->hardware_lock, flags);
	FUNC0(ha);
	FUNC2(&ha->hardware_lock, flags);
}