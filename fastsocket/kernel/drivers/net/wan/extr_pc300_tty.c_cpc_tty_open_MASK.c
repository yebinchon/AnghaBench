#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int index; TYPE_3__* driver_data; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * last; TYPE_1__* first; } ;
struct TYPE_7__ {scalar_t__ state; int name; scalar_t__ num_open; int /*<<< orphan*/  pc300dev; struct tty_struct* tty; TYPE_2__ buf_rx; scalar_t__ buf_tx; } ;
typedef  TYPE_3__ st_cpc_tty_area ;
struct TYPE_5__ {struct TYPE_5__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  CPC_TTY_MAX_MTU ; 
 int CPC_TTY_NPORTS ; 
 scalar_t__ CPC_TTY_ST_IDLE ; 
 scalar_t__ CPC_TTY_ST_OPEN ; 
 int /*<<< orphan*/  CTL_DTR ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_3__* cpc_tty_area ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty, struct file *flip)
{
	int port ;
	st_cpc_tty_area *cpc_tty;

	if (!tty) { 
		return -ENODEV;
	} 

	port = tty->index;

	if ((port < 0) || (port >= CPC_TTY_NPORTS)){ 
		FUNC0("pc300_tty: open invalid port %d\n", port);
		return -ENODEV;
	} 

	cpc_tty = &cpc_tty_area[port];
	
	if (cpc_tty->state == CPC_TTY_ST_IDLE){
		FUNC0("%s: open - invalid interface, port=%d\n",
					cpc_tty->name, tty->index);
		return -ENODEV;
	}

	if (cpc_tty->num_open == 0) { /* first open of this tty */
		if (!cpc_tty_area[port].buf_tx){
			cpc_tty_area[port].buf_tx = FUNC3(CPC_TTY_MAX_MTU,GFP_KERNEL);
			if (!cpc_tty_area[port].buf_tx) {
				FUNC0("%s: error in memory allocation\n",cpc_tty->name);
				return -ENOMEM;
			}
		} 

		if (cpc_tty_area[port].buf_rx.first) {
			unsigned char * aux;
			while (cpc_tty_area[port].buf_rx.first) {
				aux = (unsigned char *)cpc_tty_area[port].buf_rx.first;
				cpc_tty_area[port].buf_rx.first = cpc_tty_area[port].buf_rx.first->next;
				FUNC2(aux);
			}
			cpc_tty_area[port].buf_rx.first = NULL;
			cpc_tty_area[port].buf_rx.last = NULL;
		}

		cpc_tty_area[port].state = CPC_TTY_ST_OPEN;
		cpc_tty_area[port].tty = tty;
		tty->driver_data = &cpc_tty_area[port];

		FUNC1(cpc_tty->pc300dev, CTL_DTR);
	} 

	cpc_tty->num_open++;

	FUNC0("%s: opening TTY driver\n", cpc_tty->name);
	
	/* avisar driver PC300 */ 
	return 0; 
}