#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int BaseAddress; } ;
typedef  TYPE_1__ nsp_hw_data ;

/* Variables and functions */
 int /*<<< orphan*/  IRQCONTROL ; 
 int /*<<< orphan*/  IRQCONTROL_ALLCLEAR ; 
 int /*<<< orphan*/  IRQCONTROL_ALLMASK ; 
 int /*<<< orphan*/  IRQPHASESENCE ; 
 int /*<<< orphan*/  SCSIBUSCTRL ; 
 int /*<<< orphan*/  SCSI_RST ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(nsp_hw_data *data)
{
	unsigned int base = data->BaseAddress;
	int	     i;

	FUNC3(base, IRQCONTROL, IRQCONTROL_ALLMASK);

	FUNC2(base, SCSIBUSCTRL, SCSI_RST);
	FUNC0(100); /* 100ms */
	FUNC2(base, SCSIBUSCTRL, 0);
	for(i = 0; i < 5; i++) {
		FUNC1(base, IRQPHASESENCE); /* dummy read */
	}

	FUNC4(data);

	FUNC3(base, IRQCONTROL, IRQCONTROL_ALLCLEAR);

	return SUCCESS;
}