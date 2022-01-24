#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
struct ib_mr {int dummy; } ;
struct TYPE_6__ {int access_flags; int /*<<< orphan*/  length; TYPE_2__** map; void* iova; void* user_base; } ;
struct qib_mr {struct ib_mr ibmr; TYPE_3__ mr; } ;
struct ib_phys_buf {scalar_t__ size; scalar_t__ addr; } ;
struct ib_pd {int dummy; } ;
struct TYPE_5__ {TYPE_1__* segs; } ;
struct TYPE_4__ {scalar_t__ length; void* vaddr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qib_mr*) ; 
 int QIB_SEGSZ ; 
 struct qib_mr* FUNC1 (int,struct ib_pd*) ; 

struct ib_mr *FUNC2(struct ib_pd *pd,
			      struct ib_phys_buf *buffer_list,
			      int num_phys_buf, int acc, u64 *iova_start)
{
	struct qib_mr *mr;
	int n, m, i;
	struct ib_mr *ret;

	mr = FUNC1(num_phys_buf, pd);
	if (FUNC0(mr)) {
		ret = (struct ib_mr *)mr;
		goto bail;
	}

	mr->mr.user_base = *iova_start;
	mr->mr.iova = *iova_start;
	mr->mr.access_flags = acc;

	m = 0;
	n = 0;
	for (i = 0; i < num_phys_buf; i++) {
		mr->mr.map[m]->segs[n].vaddr = (void *) buffer_list[i].addr;
		mr->mr.map[m]->segs[n].length = buffer_list[i].size;
		mr->mr.length += buffer_list[i].size;
		n++;
		if (n == QIB_SEGSZ) {
			m++;
			n = 0;
		}
	}

	ret = &mr->ibmr;

bail:
	return ret;
}