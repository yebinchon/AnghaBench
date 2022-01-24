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
struct tty_struct {scalar_t__ driver_data; } ;
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  name; struct tty_struct* tty; } ;
typedef  TYPE_1__ st_cpc_tty_area ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int CPC_TTY_MAX_MTU ; 
 scalar_t__ CPC_TTY_ST_OPEN ; 
 int ENODEV ; 

__attribute__((used)) static int FUNC1(struct tty_struct *tty)
{
	st_cpc_tty_area    *cpc_tty; 

	if (!tty || !tty->driver_data ) { 
		FUNC0("hdlcX-tty: no TTY to write room\n");
		return -ENODEV;
	}

	cpc_tty = (st_cpc_tty_area *) tty->driver_data; 

	if ((cpc_tty->tty != tty) ||  (cpc_tty->state != CPC_TTY_ST_OPEN)) { 
		FUNC0("%s: TTY is not opened\n",cpc_tty->name);
		return -ENODEV; 
	}
   	
	FUNC0("%s: write room\n",cpc_tty->name);
	
	return CPC_TTY_MAX_MTU;
}