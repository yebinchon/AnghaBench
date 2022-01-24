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
typedef  int u16 ;
struct fc_lport {int dummy; } ;
struct fc_exch_pool {scalar_t__ left; scalar_t__ right; int next_index; int /*<<< orphan*/  lock; int /*<<< orphan*/  total_exches; int /*<<< orphan*/  ex_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  no_free_exch_xid; int /*<<< orphan*/  no_free_exch; } ;
struct fc_exch_mgr {int pool_max_index; int /*<<< orphan*/  ep_pool; TYPE_1__ stats; int /*<<< orphan*/  class; scalar_t__ min_xid; int /*<<< orphan*/  pool; } ;
struct fc_exch {int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  class; scalar_t__ rxid; int /*<<< orphan*/  f_ctl; struct fc_lport* lp; struct fc_exch_pool* pool; struct fc_exch_mgr* em; scalar_t__ xid; scalar_t__ oxid; int /*<<< orphan*/  seq_id; int /*<<< orphan*/  ex_list; int /*<<< orphan*/  ex_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_FC_FIRST_SEQ ; 
 scalar_t__ FC_XID_UNKNOWN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int fc_cpu_order ; 
 int /*<<< orphan*/  FUNC2 (struct fc_exch*) ; 
 scalar_t__ FUNC3 (struct fc_exch_pool*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_exch_pool*,int,struct fc_exch*) ; 
 int /*<<< orphan*/  fc_exch_timeout ; 
 int /*<<< orphan*/  FUNC5 (struct fc_exch*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct fc_exch* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fc_exch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_exch*,int /*<<< orphan*/ ,int) ; 
 struct fc_exch_pool* FUNC11 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fc_exch *FUNC16(struct fc_lport *lport,
					struct fc_exch_mgr *mp)
{
	struct fc_exch *ep;
	unsigned int cpu;
	u16 index;
	struct fc_exch_pool *pool;

	/* allocate memory for exchange */
	ep = FUNC8(mp->ep_pool, GFP_ATOMIC);
	if (!ep) {
		FUNC1(&mp->stats.no_free_exch);
		goto out;
	}
	FUNC10(ep, 0, sizeof(*ep));

	cpu = FUNC6();
	pool = FUNC11(mp->pool, cpu);
	FUNC13(&pool->lock);
	FUNC12();

	/* peek cache of free slot */
	if (pool->left != FC_XID_UNKNOWN) {
		index = pool->left;
		pool->left = FC_XID_UNKNOWN;
		goto hit;
	}
	if (pool->right != FC_XID_UNKNOWN) {
		index = pool->right;
		pool->right = FC_XID_UNKNOWN;
		goto hit;
	}

	index = pool->next_index;
	/* allocate new exch from pool */
	while (FUNC3(pool, index)) {
		index = index == mp->pool_max_index ? 0 : index + 1;
		if (index == pool->next_index)
			goto err;
	}
	pool->next_index = index == mp->pool_max_index ? 0 : index + 1;
hit:
	FUNC2(ep);	/* hold for exch in mp */
	FUNC14(&ep->ex_lock);
	/*
	 * Hold exch lock for caller to prevent fc_exch_reset()
	 * from releasing exch	while fc_exch_alloc() caller is
	 * still working on exch.
	 */
	FUNC13(&ep->ex_lock);

	FUNC4(pool, index, ep);
	FUNC7(&ep->ex_list, &pool->ex_list);
	FUNC5(ep, ep->seq_id++);
	pool->total_exches++;
	FUNC15(&pool->lock);

	/*
	 *  update exchange
	 */
	ep->oxid = ep->xid = (index << fc_cpu_order | cpu) + mp->min_xid;
	ep->em = mp;
	ep->pool = pool;
	ep->lp = lport;
	ep->f_ctl = FC_FC_FIRST_SEQ;	/* next seq is first seq */
	ep->rxid = FC_XID_UNKNOWN;
	ep->class = mp->class;
	FUNC0(&ep->timeout_work, fc_exch_timeout);
out:
	return ep;
err:
	FUNC15(&pool->lock);
	FUNC1(&mp->stats.no_free_exch_xid);
	FUNC9(ep, mp->ep_pool);
	return NULL;
}