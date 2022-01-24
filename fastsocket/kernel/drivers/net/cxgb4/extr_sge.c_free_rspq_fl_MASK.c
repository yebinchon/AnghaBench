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
struct sge_rspq {size_t cntxt_id; int size; int iqe_len; size_t abs_id; int /*<<< orphan*/ * desc; int /*<<< orphan*/ * netdev; int /*<<< orphan*/  napi; int /*<<< orphan*/  phys_addr; } ;
struct sge_fl {int cntxt_id; int size; int /*<<< orphan*/ * desc; int /*<<< orphan*/ * sdesc; int /*<<< orphan*/  addr; int /*<<< orphan*/  avail; } ;
struct TYPE_2__ {size_t ingr_start; int /*<<< orphan*/ ** ingr_map; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; int /*<<< orphan*/  fn; TYPE_1__ sge; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_IQ_TYPE_FL_INT_CAP ; 
 int STAT_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,struct sge_fl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,unsigned int,int) ; 

__attribute__((used)) static void FUNC5(struct adapter *adap, struct sge_rspq *rq,
			 struct sge_fl *fl)
{
	unsigned int fl_id = fl ? fl->cntxt_id : 0xffff;

	adap->sge.ingr_map[rq->cntxt_id - adap->sge.ingr_start] = NULL;
	FUNC4(adap, adap->fn, adap->fn, 0, FW_IQ_TYPE_FL_INT_CAP,
		   rq->cntxt_id, fl_id, 0xffff);
	FUNC0(adap->pdev_dev, (rq->size + 1) * rq->iqe_len,
			  rq->desc, rq->phys_addr);
	FUNC3(&rq->napi);
	rq->netdev = NULL;
	rq->cntxt_id = rq->abs_id = 0;
	rq->desc = NULL;

	if (fl) {
		FUNC1(adap, fl, fl->avail);
		FUNC0(adap->pdev_dev, fl->size * 8 + STAT_LEN,
				  fl->desc, fl->addr);
		FUNC2(fl->sdesc);
		fl->sdesc = NULL;
		fl->cntxt_id = 0;
		fl->desc = NULL;
	}
}