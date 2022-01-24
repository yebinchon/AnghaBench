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
typedef  size_t u32 ;
struct hw_fib {scalar_t__ data; } ;
struct fib {int size; int /*<<< orphan*/  fiblink; struct aac_dev* dev; scalar_t__ data; struct hw_fib* hw_fib_va; int /*<<< orphan*/  type; } ;
struct aac_queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  cmdready; int /*<<< orphan*/  cmdq; struct aac_dev* dev; } ;
struct aac_entry {int /*<<< orphan*/  addr; } ;
struct aac_dev {scalar_t__ aif_thread; struct hw_fib* aif_base_va; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FSAFS_NTC_FIB_CONTEXT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HostNormCmdQueue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ST_OK ; 
 int /*<<< orphan*/  FUNC1 (struct aac_dev*,struct aac_queue*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct aac_dev*,struct aac_queue*,struct aac_entry**) ; 
 int /*<<< orphan*/  FUNC3 (struct fib*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct fib* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct fib*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

unsigned int FUNC12(struct aac_queue *q)
{
	struct aac_dev * dev = q->dev;
	struct aac_entry *entry;
	unsigned long flags;

	FUNC9(q->lock, flags);

	/*
	 *	Keep pulling response QEs off the response queue and waking
	 *	up the waiters until there are no more QEs. We then return
	 *	back to the system.
	 */
	while(FUNC2(dev, q, &entry))
	{
		struct fib fibctx;
		struct hw_fib * hw_fib;
		u32 index;
		struct fib *fib = &fibctx;
		
		index = FUNC6(entry->addr) / sizeof(struct hw_fib);
		hw_fib = &dev->aif_base_va[index];
		
		/*
		 *	Allocate a FIB at all costs. For non queued stuff
		 *	we can just use the stack so we are happy. We need
		 *	a fib object in order to manage the linked lists
		 */
		if (dev->aif_thread)
			if((fib = FUNC5(sizeof(struct fib), GFP_ATOMIC)) == NULL)
				fib = &fibctx;
		
		FUNC8(fib, 0, sizeof(struct fib));
		FUNC0(&fib->fiblink);
		fib->type = FSAFS_NTC_FIB_CONTEXT;
		fib->size = sizeof(struct fib);
		fib->hw_fib_va = hw_fib;
		fib->data = hw_fib->data;
		fib->dev = dev;
		
				
		if (dev->aif_thread && fib != &fibctx) {
		        FUNC7(&fib->fiblink, &q->cmdq);
	 	        FUNC1(dev, q, HostNormCmdQueue);
		        FUNC11(&q->cmdready);
		} else {
	 	        FUNC1(dev, q, HostNormCmdQueue);
			FUNC10(q->lock, flags);
			/*
			 *	Set the status of this FIB
			 */
			*(__le32 *)hw_fib->data = FUNC4(ST_OK);
			FUNC3(fib, sizeof(u32));
			FUNC9(q->lock, flags);
		}		
	}
	FUNC10(q->lock, flags);
	return 0;
}