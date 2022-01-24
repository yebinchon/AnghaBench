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
typedef  int /*<<< orphan*/  u8 ;
struct asd_ha_struct {TYPE_1__* io_handle; int /*<<< orphan*/  iospace; } ;
struct TYPE_2__ {scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC4(struct asd_ha_struct *asd_ha, unsigned long offs)
{
	u8 val;
	if (FUNC3(asd_ha->iospace))
		val = FUNC0((unsigned long) asd_ha->io_handle[0].addr
			  + (offs & 0xFF));
	else
		val = FUNC1(asd_ha->io_handle[0].addr + offs);
	FUNC2();
	return val;
}