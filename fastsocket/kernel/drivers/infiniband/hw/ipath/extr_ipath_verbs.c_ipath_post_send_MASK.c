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
struct ipath_qp {int dummy; } ;
struct ib_send_wr {struct ib_send_wr* next; } ;
struct ib_qp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int FUNC1 (struct ipath_qp*,struct ib_send_wr*) ; 
 struct ipath_qp* FUNC2 (struct ib_qp*) ; 

__attribute__((used)) static int FUNC3(struct ib_qp *ibqp, struct ib_send_wr *wr,
			   struct ib_send_wr **bad_wr)
{
	struct ipath_qp *qp = FUNC2(ibqp);
	int err = 0;

	for (; wr; wr = wr->next) {
		err = FUNC1(qp, wr);
		if (err) {
			*bad_wr = wr;
			goto bail;
		}
	}

	/* Try to do the send work in the caller's context. */
	FUNC0((unsigned long) qp);

bail:
	return err;
}