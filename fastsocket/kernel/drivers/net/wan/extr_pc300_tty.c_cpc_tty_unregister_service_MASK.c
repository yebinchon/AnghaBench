#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
struct TYPE_10__ {int name; int /*<<< orphan*/  state; scalar_t__ tty_minor; int /*<<< orphan*/ * tty; TYPE_4__* pc300dev; } ;
typedef  TYPE_3__ st_cpc_tty_area ;
struct TYPE_11__ {TYPE_2__* chan; TYPE_1__* dev; scalar_t__ cpc_tty; } ;
typedef  TYPE_4__ pc300dev_t ;
struct TYPE_12__ {int refcount; } ;
struct TYPE_9__ {int /*<<< orphan*/  card; } ;
struct TYPE_8__ {int name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CPC_TTY_ST_IDLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ cpc_tty_cnt ; 
 int cpc_tty_unreg_flag ; 
 TYPE_5__ serial_drv ; 
 int FUNC3 (TYPE_5__*) ; 

void FUNC4(pc300dev_t *pc300dev)
{
	st_cpc_tty_area *cpc_tty; 
	ulong flags;
	int res;

	if ((cpc_tty= (st_cpc_tty_area *) pc300dev->cpc_tty) == NULL) {
		FUNC0("%s: interface is not TTY\n", pc300dev->dev->name);
		return; 
	}
	FUNC0("%s: cpc_tty_unregister_service", cpc_tty->name);

	if (cpc_tty->pc300dev != pc300dev) { 
		FUNC0("%s: invalid tty ptr=%s\n", 
		pc300dev->dev->name, cpc_tty->name);
		return; 
	}

	if (--cpc_tty_cnt == 0) { 
		if (serial_drv.refcount) {
			FUNC0("%s: unregister is not possible, refcount=%d",
							cpc_tty->name, serial_drv.refcount);
			cpc_tty_cnt++;
			cpc_tty_unreg_flag = 1;
			return;
		} else { 
			FUNC0("%s: unregister the tty driver\n", cpc_tty->name);
			if ((res=FUNC3(&serial_drv))) { 
				FUNC0("%s: ERROR ->unregister the tty driver error=%d\n",
								cpc_tty->name,res);
			}
		}
	}
	FUNC1(pc300dev->chan->card,flags);
	cpc_tty->tty = NULL; 
	FUNC2(pc300dev->chan->card, flags);
	cpc_tty->tty_minor = 0; 
	cpc_tty->state = CPC_TTY_ST_IDLE; 
}