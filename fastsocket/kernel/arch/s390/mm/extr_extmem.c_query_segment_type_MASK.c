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
struct qrange {int dummy; } ;
struct qout64_old {unsigned long qoutptr; int qoutlen; unsigned long segstart; unsigned long segend; int segcnt; int segrcnt; unsigned long start; unsigned long end; struct qout64_old* range; struct qout64_old* qname; int /*<<< orphan*/  qopcode; } ;
struct qout64 {unsigned long qoutptr; int qoutlen; unsigned long segstart; unsigned long segend; int segcnt; int segrcnt; unsigned long start; unsigned long end; struct qout64* range; struct qout64* qname; int /*<<< orphan*/  qopcode; } ;
struct qin64 {unsigned long qoutptr; int qoutlen; unsigned long segstart; unsigned long segend; int segcnt; int segrcnt; unsigned long start; unsigned long end; struct qin64* range; struct qin64* qname; int /*<<< orphan*/  qopcode; } ;
struct dcss_segment {int vm_segtype; int start_addr; unsigned long end; int segcnt; struct qout64_old* range; struct qout64_old* dcss_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCSS_FINDSEGA ; 
 scalar_t__ DCSS_SEGEXT ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GFP_DMA ; 
 int PAGE_SHIFT ; 
 int SEG_TYPE_EN ; 
 int SEG_TYPE_EW ; 
 int SEG_TYPE_EWEN ; 
 int FUNC0 (scalar_t__*,struct qout64_old*,unsigned long*,unsigned long*) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct qout64_old*) ; 
 struct qout64_old* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct qout64_old* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qout64_old*,struct qout64_old*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long) ; 
 scalar_t__ segext_scode ; 

__attribute__((used)) static int
FUNC7 (struct dcss_segment *seg)
{
	struct qin64  *qin = FUNC3 (sizeof(struct qin64), GFP_DMA);
	struct qout64 *qout = FUNC3 (sizeof(struct qout64), GFP_DMA);

	int diag_cc, rc, i;
	unsigned long dummy, vmrc;

	if ((qin == NULL) || (qout == NULL)) {
		rc = -ENOMEM;
		goto out_free;
	}

	/* initialize diag input parameters */
	qin->qopcode = DCSS_FINDSEGA;
	qin->qoutptr = (unsigned long) qout;
	qin->qoutlen = sizeof(struct qout64);
	FUNC5 (qin->qname, seg->dcss_name, 8);

	diag_cc = FUNC0(&segext_scode, qin, &dummy, &vmrc);

	if (diag_cc < 0) {
		rc = diag_cc;
		goto out_free;
	}
	if (diag_cc > 1) {
		FUNC6("Querying a DCSS type failed with rc=%ld\n", vmrc);
		rc = FUNC1 (vmrc);
		goto out_free;
	}

#ifdef CONFIG_64BIT
	/* Only old format of output area of Diagnose x'64' is supported,
	   copy data for the new format. */
	if (segext_scode == DCSS_SEGEXT) {
		struct qout64_old *qout_old;
		qout_old = kzalloc(sizeof(struct qout64_old), GFP_DMA);
		if (qout_old == NULL) {
			rc = -ENOMEM;
			goto out_free;
		}
		memcpy(qout_old, qout, sizeof(struct qout64_old));
		qout->segstart = (unsigned long) qout_old->segstart;
		qout->segend = (unsigned long) qout_old->segend;
		qout->segcnt = qout_old->segcnt;
		qout->segrcnt = qout_old->segrcnt;

		if (qout->segcnt > 6)
			qout->segrcnt = 6;
		for (i = 0; i < qout->segrcnt; i++) {
			qout->range[i].start =
				(unsigned long) qout_old->range[i].start;
			qout->range[i].end =
				(unsigned long) qout_old->range[i].end;
		}
		kfree(qout_old);
	}
#endif
	if (qout->segcnt > 6) {
		rc = -ENOTSUPP;
		goto out_free;
	}

	if (qout->segcnt == 1) {
		seg->vm_segtype = qout->range[0].start & 0xff;
	} else {
		/* multi-part segment. only one type supported here:
		    - all parts are contiguous
		    - all parts are either EW or EN type
		    - maximum 6 parts allowed */
		unsigned long start = qout->segstart >> PAGE_SHIFT;
		for (i=0; i<qout->segcnt; i++) {
			if (((qout->range[i].start & 0xff) != SEG_TYPE_EW) &&
			    ((qout->range[i].start & 0xff) != SEG_TYPE_EN)) {
				rc = -ENOTSUPP;
				goto out_free;
			}
			if (start != qout->range[i].start >> PAGE_SHIFT) {
				rc = -ENOTSUPP;
				goto out_free;
			}
			start = (qout->range[i].end >> PAGE_SHIFT) + 1;
		}
		seg->vm_segtype = SEG_TYPE_EWEN;
	}

	/* analyze diag output and update seg */
	seg->start_addr = qout->segstart;
	seg->end = qout->segend;

	FUNC5 (seg->range, qout->range, 6*sizeof(struct qrange));
	seg->segcnt = qout->segcnt;

	rc = 0;

 out_free:
	FUNC2(qin);
	FUNC2(qout);
	return rc;
}