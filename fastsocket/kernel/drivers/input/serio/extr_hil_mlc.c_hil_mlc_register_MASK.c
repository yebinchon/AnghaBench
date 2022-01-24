#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int id; } ;
struct serio {TYPE_1__* port_data; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  write; TYPE_3__ id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int icount; int /*<<< orphan*/  seidx; int /*<<< orphan*/  list; int /*<<< orphan*/ * tasklet; scalar_t__* serio_oidx; scalar_t__* serio_opacket; TYPE_1__* serio_map; struct serio** serio; int /*<<< orphan*/  csem; scalar_t__ opercnt; scalar_t__ imatch; int /*<<< orphan*/  isem; int /*<<< orphan*/  osem; int /*<<< orphan*/  lock; scalar_t__ ostarted; scalar_t__ istarted; } ;
typedef  TYPE_2__ hil_mlc ;
struct TYPE_8__ {int didx; int di_revmap; TYPE_2__* mlc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HILSEN_START ; 
 int HIL_MLC_DEVMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  hil_mlc_serio_close ; 
 TYPE_3__ hil_mlc_serio_id ; 
 int /*<<< orphan*/  hil_mlc_serio_open ; 
 int /*<<< orphan*/  hil_mlc_serio_write ; 
 int /*<<< orphan*/  hil_mlcs ; 
 int /*<<< orphan*/  hil_mlcs_lock ; 
 int /*<<< orphan*/  hil_mlcs_tasklet ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct serio* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct serio*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC14(hil_mlc *mlc)
{
	int i;
	unsigned long flags;

	FUNC0(mlc == NULL);

	mlc->istarted = 0;
	mlc->ostarted = 0;

	FUNC8(&mlc->lock);
	FUNC4(&mlc->osem);

	FUNC4(&mlc->isem);
	mlc->icount = -1;
	mlc->imatch = 0;

	mlc->opercnt = 0;

	FUNC5(&(mlc->csem));

	FUNC2(mlc);
	FUNC1(mlc, 0);
	for (i = 0; i < HIL_MLC_DEVMEM; i++) {
		struct serio *mlc_serio;
		FUNC3(mlc, i);
		mlc_serio = FUNC6(sizeof(*mlc_serio), GFP_KERNEL);
		mlc->serio[i] = mlc_serio;
		FUNC10(mlc_serio->name, sizeof(mlc_serio->name)-1, "HIL_SERIO%d", i);
		FUNC10(mlc_serio->phys, sizeof(mlc_serio->phys)-1, "HIL%d", i);
		mlc_serio->id			= hil_mlc_serio_id;
		mlc_serio->id.id		= i; /* HIL port no. */
		mlc_serio->write		= hil_mlc_serio_write;
		mlc_serio->open			= hil_mlc_serio_open;
		mlc_serio->close		= hil_mlc_serio_close;
		mlc_serio->port_data		= &(mlc->serio_map[i]);
		mlc->serio_map[i].mlc		= mlc;
		mlc->serio_map[i].didx		= i;
		mlc->serio_map[i].di_revmap	= -1;
		mlc->serio_opacket[i]		= 0;
		mlc->serio_oidx[i]		= 0;
		FUNC9(mlc_serio);
	}

	mlc->tasklet = &hil_mlcs_tasklet;

	FUNC12(&hil_mlcs_lock, flags);
	FUNC7(&mlc->list, &hil_mlcs);
	mlc->seidx = HILSEN_START;
	FUNC13(&hil_mlcs_lock, flags);

	FUNC11(&hil_mlcs_tasklet);
	return 0;
}