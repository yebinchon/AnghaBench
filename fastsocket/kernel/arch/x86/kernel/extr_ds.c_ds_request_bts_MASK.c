#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct TYPE_8__ {TYPE_2__* context; } ;
struct TYPE_6__ {int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  ds; } ;
struct bts_tracer {TYPE_3__ ds; TYPE_1__ trace; scalar_t__ ovfl; } ;
typedef  scalar_t__ bts_ovfl_callback_t ;
struct TYPE_7__ {struct bts_tracer* bts_master; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 struct bts_tracer* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  bts_read ; 
 int /*<<< orphan*/  bts_write ; 
 int /*<<< orphan*/  ds_bts ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,size_t,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  ds_lock ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct task_struct*,int,void*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct bts_tracer*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct bts_tracer*) ; 
 struct bts_tracer* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct bts_tracer *FUNC13(struct task_struct *task, int cpu,
					 void *base, size_t size,
					 bts_ovfl_callback_t ovfl, size_t th,
					 unsigned int flags)
{
	struct bts_tracer *tracer;
	int error;

	/* Buffer overflow notification is not yet implemented. */
	error = -EOPNOTSUPP;
	if (ovfl)
		goto out;

	error = FUNC7(task);
	if (error < 0)
		goto out;

	error = -ENOMEM;
	tracer = FUNC9(sizeof(*tracer), GFP_KERNEL);
	if (!tracer)
		goto out_put_tracer;
	tracer->ovfl = ovfl;

	/* Do some more error checking and acquire a tracing context. */
	error = FUNC4(&tracer->ds, &tracer->trace.ds,
			   ds_bts, task, cpu, base, size, th);
	if (error < 0)
		goto out_tracer;

	/* Claim the bts part of the tracing context we acquired above. */
	FUNC11(&ds_lock);

	error = -EPERM;
	if (tracer->ds.context->bts_master)
		goto out_unlock;
	tracer->ds.context->bts_master = tracer;

	FUNC12(&ds_lock);

	/*
	 * Now that we own the bts part of the context, let's complete the
	 * initialization for that part.
	 */
	FUNC1(&tracer->trace.ds, ds_bts, base, size, th, flags);
	FUNC6(tracer->ds.context, &tracer->trace.ds, ds_bts);
	FUNC2(tracer->ds.context);

	tracer->trace.read  = bts_read;
	tracer->trace.write = bts_write;

	/* Start tracing. */
	FUNC5(tracer);

	return tracer;

 out_unlock:
	FUNC12(&ds_lock);
	FUNC3(tracer->ds.context);
 out_tracer:
	FUNC8(tracer);
 out_put_tracer:
	FUNC10(task);
 out:
	return FUNC0(error);
}