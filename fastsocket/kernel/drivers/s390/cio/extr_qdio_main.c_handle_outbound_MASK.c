#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int pci_out_enabled; int use_enh_siga; } ;
struct TYPE_7__ {TYPE_4__ out; } ;
struct qdio_q {int /*<<< orphan*/  tasklet; TYPE_3__ u; TYPE_2__* irq_ptr; int /*<<< orphan*/  nr_buf_used; } ;
struct TYPE_5__ {int mmwc; } ;
struct TYPE_6__ {TYPE_1__ ssqd_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int QDIO_FLAG_PCI_OUT ; 
 scalar_t__ QDIO_IQDIO_QFMT ; 
 int QDIO_MAX_BUFFERS_PER_Q ; 
 unsigned char SLSB_CU_OUTPUT_PRIMED ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fast_requeue ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_q*,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct qdio_q*) ; 
 scalar_t__ FUNC4 (struct qdio_q*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  outbound_call ; 
 int /*<<< orphan*/  pci_request_int ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 unsigned long FUNC7 (TYPE_4__*,int) ; 
 int FUNC8 (struct qdio_q*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC10 (struct qdio_q*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct qdio_q*) ; 
 int FUNC12 (struct qdio_q*,int,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct qdio_q *q, unsigned int callflags,
			   int bufnr, int count)
{
	unsigned char state;
	int used, rc = 0;

	FUNC10(q, outbound_call);

	count = FUNC12(q, bufnr, SLSB_CU_OUTPUT_PRIMED, count);
	used = FUNC1(count, &q->nr_buf_used);
	FUNC0(used > QDIO_MAX_BUFFERS_PER_Q);

	if (callflags & QDIO_FLAG_PCI_OUT) {
		q->u.out.pci_out_enabled = 1;
		FUNC10(q, pci_request_int);
	}
	else
		q->u.out.pci_out_enabled = 0;

	if (FUNC11(q) == QDIO_IQDIO_QFMT) {
		if (FUNC3(q))
			rc = FUNC8(q, 0);
		else
			if ((q->irq_ptr->ssqd_desc.mmwc > 1) &&
			    (count > 1) &&
			    (count <= q->irq_ptr->ssqd_desc.mmwc)) {
				/* exploit enhanced SIGA */
				q->u.out.use_enh_siga = 1;
				rc = FUNC8(q, 0);
			} else {
				int b2kick;
				unsigned long phys_aob;

				/*
				* One siga-w per buffer required for unicast
				* HiperSockets.
				*/
				q->u.out.use_enh_siga = 0;
				b2kick = bufnr;
				while (count--) {
					phys_aob = FUNC7(
							&q->u.out, b2kick);
					rc = FUNC8(q, phys_aob);
					if (rc)
						goto out;
					b2kick = FUNC5(b2kick);
				}
			}
		goto out;
	}

	if (FUNC4(q)) {
		FUNC9(q);
		goto out;
	}

	/* try to fast requeue buffers */
	FUNC2(q, FUNC6(bufnr), &state, 0);
	if (state != SLSB_CU_OUTPUT_PRIMED)
		rc = FUNC8(q, 0);
	else
		FUNC10(q, fast_requeue);

out:
	FUNC13(&q->tasklet);
	return rc;
}