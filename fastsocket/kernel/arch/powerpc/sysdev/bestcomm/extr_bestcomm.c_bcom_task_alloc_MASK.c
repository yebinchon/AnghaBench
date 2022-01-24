#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bcom_task {int tasknum; scalar_t__ irq; int num_bd; int bd_size; struct bcom_task* cookie; int /*<<< orphan*/  bd; int /*<<< orphan*/  bd_pa; void* priv; } ;
struct TYPE_4__ {TYPE_1__* tdt; int /*<<< orphan*/  ofnode; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int stop; } ;

/* Variables and functions */
 int BCOM_MAX_TASKS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NO_IRQ ; 
 TYPE_2__* bcom_eng ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bcom_task*) ; 
 struct bcom_task* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct bcom_task* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct bcom_task *
FUNC10(int bd_count, int bd_size, int priv_size)
{
	int i, tasknum = -1;
	struct bcom_task *tsk;

	/* Don't try to do anything if bestcomm init failed */
	if (!bcom_eng)
		return NULL;

	/* Get and reserve a task num */
	FUNC8(&bcom_eng->lock);

	for (i=0; i<BCOM_MAX_TASKS; i++)
		if (!bcom_eng->tdt[i].stop) {	/* we use stop as a marker */
			bcom_eng->tdt[i].stop = 0xfffffffful; /* dummy addr */
			tasknum = i;
			break;
		}

	FUNC9(&bcom_eng->lock);

	if (tasknum < 0)
		return NULL;

	/* Allocate our structure */
	tsk = FUNC6(sizeof(struct bcom_task) + priv_size, GFP_KERNEL);
	if (!tsk)
		goto error;

	tsk->tasknum = tasknum;
	if (priv_size)
		tsk->priv = (void*)tsk + sizeof(struct bcom_task);

	/* Get IRQ of that task */
	tsk->irq = FUNC3(bcom_eng->ofnode, tsk->tasknum);
	if (tsk->irq == NO_IRQ)
		goto error;

	/* Init the BDs, if needed */
	if (bd_count) {
		tsk->cookie = FUNC5(sizeof(void*) * bd_count, GFP_KERNEL);
		if (!tsk->cookie)
			goto error;

		tsk->bd = FUNC0(bd_count * bd_size, 4, &tsk->bd_pa);
		if (!tsk->bd)
			goto error;
		FUNC7(tsk->bd, 0x00, bd_count * bd_size);

		tsk->num_bd = bd_count;
		tsk->bd_size = bd_size;
	}

	return tsk;

error:
	if (tsk) {
		if (tsk->irq != NO_IRQ)
			FUNC2(tsk->irq);
		FUNC1(tsk->bd);
		FUNC4(tsk->cookie);
		FUNC4(tsk);
	}

	bcom_eng->tdt[tasknum].stop = 0;

	return NULL;
}