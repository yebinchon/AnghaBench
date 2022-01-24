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
typedef  int /*<<< orphan*/  uint32_t ;
struct ioc3_driver_data {int /*<<< orphan*/  ir_lock; TYPE_1__* vma; } ;
struct TYPE_2__ {int /*<<< orphan*/  sio_ies; int /*<<< orphan*/  sio_ir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline uint32_t FUNC3(struct ioc3_driver_data *idd)
{
	unsigned long flag;
	uint32_t intrs = 0;

	FUNC1(&idd->ir_lock, flag);
	intrs = FUNC0(&idd->vma->sio_ir);
	intrs &= FUNC0(&idd->vma->sio_ies);
	FUNC2(&idd->ir_lock, flag);
	return intrs;
}