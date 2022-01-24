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
typedef  int /*<<< orphan*/  u16 ;
struct asd_ha_struct {TYPE_1__* io_handle; int /*<<< orphan*/  iospace; } ;
struct TYPE_2__ {scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct asd_ha_struct *asd_ha,
			   unsigned long offs, u16 val)
{
	if (FUNC1(asd_ha->iospace))
		FUNC0(val,
		     (unsigned long)asd_ha->io_handle[0].addr + (offs & 0xFF));
	else
		FUNC3(val, asd_ha->io_handle[0].addr + offs);
	FUNC2();
}