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
struct tty_driver {int dummy; } ;
typedef  int /*<<< orphan*/  st_cpc_tty_area ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int CPC_TTY_NPORTS ; 
 int /*<<< orphan*/ * cpc_tty_area ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  serial_drv ; 

void FUNC2(void)
{
	int i ; 

	FUNC0("hdlcX-tty: reset variables\n");
	/* reset  the tty_driver structure - serial_drv */ 
	FUNC1(&serial_drv, 0, sizeof(struct tty_driver));
	for (i=0; i < CPC_TTY_NPORTS; i++){
		FUNC1(&cpc_tty_area[i],0, sizeof(st_cpc_tty_area)); 
	}
}