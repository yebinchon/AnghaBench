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
typedef  union bnx2x_qable_obj {int dummy; } bnx2x_qable_obj ;
struct bnx2x_exe_queue_obj {int exe_chunk_len; int /*<<< orphan*/  get; int /*<<< orphan*/  execute; int /*<<< orphan*/  optimize; int /*<<< orphan*/  remove; int /*<<< orphan*/  validate; union bnx2x_qable_obj* owner; int /*<<< orphan*/  lock; int /*<<< orphan*/  pending_comp; int /*<<< orphan*/  exe_queue; } ;
struct bnx2x {int dummy; } ;
typedef  int /*<<< orphan*/  exe_q_validate ;
typedef  int /*<<< orphan*/  exe_q_remove ;
typedef  int /*<<< orphan*/  exe_q_optimize ;
typedef  int /*<<< orphan*/  exe_q_get ;
typedef  int /*<<< orphan*/  exe_q_execute ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x_exe_queue_obj*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct bnx2x *bp,
					struct bnx2x_exe_queue_obj *o,
					int exe_len,
					union bnx2x_qable_obj *owner,
					exe_q_validate validate,
					exe_q_remove remove,
					exe_q_optimize optimize,
					exe_q_execute exec,
					exe_q_get get)
{
	FUNC2(o, 0, sizeof(*o));

	FUNC1(&o->exe_queue);
	FUNC1(&o->pending_comp);

	FUNC3(&o->lock);

	o->exe_chunk_len = exe_len;
	o->owner         = owner;

	/* Owner specific callbacks */
	o->validate      = validate;
	o->remove        = remove;
	o->optimize      = optimize;
	o->execute       = exec;
	o->get           = get;

	FUNC0(BNX2X_MSG_SP, "Setup the execution queue with the chunk length of %d\n",
	   exe_len);
}