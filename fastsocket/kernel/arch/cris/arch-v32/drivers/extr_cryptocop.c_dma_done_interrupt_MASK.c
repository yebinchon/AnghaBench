#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cryptocop_prio_job {int /*<<< orphan*/  node; int /*<<< orphan*/  iop; TYPE_2__* oper; } ;
struct TYPE_4__ {int data; } ;
typedef  TYPE_1__ reg_dma_rw_ack_intr ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_5__ {int /*<<< orphan*/  cb_data; int /*<<< orphan*/  (* cb ) (TYPE_2__*,int /*<<< orphan*/ ) ;scalar_t__ fast_callback; scalar_t__ operation_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IN_DMA_INST ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  cryptocop_completed_jobs ; 
 int /*<<< orphan*/  cryptocop_completed_jobs_lock ; 
 int /*<<< orphan*/  cryptocop_process_lock ; 
 struct cryptocop_prio_job* cryptocop_running_job ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  cryptocop_tasklet ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma ; 
 int /*<<< orphan*/  FUNC4 (struct cryptocop_prio_job*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  running_job_lock ; 
 int /*<<< orphan*/  rw_ack_intr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC12(int irq, void *dev_id)
{
	struct cryptocop_prio_job *done_job;
	reg_dma_rw_ack_intr ack_intr = {
		.data = 1,
	};

	FUNC1(dma, IN_DMA_INST, rw_ack_intr, ack_intr);

	FUNC0(FUNC6("cryptocop DMA done\n"));

	FUNC7(&running_job_lock);
	if (cryptocop_running_job == NULL){
		FUNC6("stream co-processor got interrupt when not busy\n");
		FUNC9(&running_job_lock);
		return IRQ_HANDLED;
	}
	done_job = cryptocop_running_job;
	cryptocop_running_job = NULL;
	FUNC9(&running_job_lock);

	/* Start processing a job. */
	if (!FUNC8(&cryptocop_process_lock)){
		FUNC0(FUNC6("cryptocop irq handler, not starting a job\n"));
	} else {
		FUNC2();
		FUNC9(&cryptocop_process_lock);
	}

	done_job->oper->operation_status = 0; /* Job is completed. */
	if (done_job->oper->fast_callback){
		/* This operation wants callback from interrupt. */
		done_job->oper->cb(done_job->oper, done_job->oper->cb_data);
		FUNC3(done_job->iop);
		FUNC4(done_job);
	} else {
		FUNC7(&cryptocop_completed_jobs_lock);
		FUNC5(&(done_job->node), &cryptocop_completed_jobs);
		FUNC9(&cryptocop_completed_jobs_lock);
		FUNC11(&cryptocop_tasklet);
	}

	FUNC0(FUNC6("cryptocop leave irq handler\n"));
	return IRQ_HANDLED;
}