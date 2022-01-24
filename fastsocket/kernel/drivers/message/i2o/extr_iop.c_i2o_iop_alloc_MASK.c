#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/ * release; } ;
struct i2o_controller {int unit; char* name; int /*<<< orphan*/  context_list; int /*<<< orphan*/  context_list_counter; int /*<<< orphan*/  context_list_lock; TYPE_1__ device; int /*<<< orphan*/  lct_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  devices; int /*<<< orphan*/  in_msg; } ;
typedef  int /*<<< orphan*/  poolname ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct i2o_controller* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2O_INBOUND_MSG_FRAME_SIZE ; 
 int /*<<< orphan*/  I2O_MSG_INPOOL_MIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  i2o_iop_release ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2o_controller*) ; 
 struct i2o_controller* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 

struct i2o_controller *FUNC13(void)
{
	static int unit = 0;	/* 0 and 1 are NULL IOP and Local Host */
	struct i2o_controller *c;
	char poolname[32];

	c = FUNC7(sizeof(*c), GFP_KERNEL);
	if (!c) {
		FUNC9("i2o: Insufficient memory to allocate a I2O controller."
			"\n");
		return FUNC0(-ENOMEM);
	}

	c->unit = unit++;
	FUNC12(c->name, "iop%d", c->unit);

	FUNC10(poolname, sizeof(poolname), "i2o_%s_msg_inpool", c->name);
	if (FUNC5
	    (&c->in_msg, poolname, I2O_INBOUND_MSG_FRAME_SIZE * 4 + sizeof(u32),
	     I2O_MSG_INPOOL_MIN)) {
		FUNC6(c);
		return FUNC0(-ENOMEM);
	};

	FUNC1(&c->devices);
	FUNC11(&c->lock);
	FUNC8(&c->lct_lock);

	FUNC4(&c->device);

	c->device.release = &i2o_iop_release;

	FUNC3(&c->device, "iop%d", c->unit);

#if BITS_PER_LONG == 64
	spin_lock_init(&c->context_list_lock);
	atomic_set(&c->context_list_counter, 0);
	INIT_LIST_HEAD(&c->context_list);
#endif

	return c;
}