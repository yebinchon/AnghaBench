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
struct sas_work {int dummy; } ;
struct sas_ha_struct {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sas_ha_struct*,struct sas_work*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long*) ; 

__attribute__((used)) static void FUNC4(int event, unsigned long *pending,
			    struct sas_work *work,
			    struct sas_ha_struct *ha)
{
	if (!FUNC3(event, pending)) {
		unsigned long flags;

		FUNC1(&ha->lock, flags);
		FUNC0(ha, work);
		FUNC2(&ha->lock, flags);
	}
}