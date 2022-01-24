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
struct qib_devdata {int /*<<< orphan*/  uctxt_lock; int /*<<< orphan*/  (* f_rcvctrl ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ (* f_hdrqempty ) (struct qib_ctxtdata*) ;} ;
struct qib_ctxtdata {int /*<<< orphan*/  ctxt; int /*<<< orphan*/  ppd; int /*<<< orphan*/  flag; int /*<<< orphan*/  wait; struct qib_devdata* dd; } ;
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 int /*<<< orphan*/  QIB_CTXT_WAITING_RCV ; 
 int /*<<< orphan*/  QIB_RCVCTRL_INTRAVAIL_ENB ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct qib_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC6(struct qib_ctxtdata *rcd,
				  struct file *fp,
				  struct poll_table_struct *pt)
{
	struct qib_devdata *dd = rcd->dd;
	unsigned pollflag;

	FUNC0(fp, &rcd->wait, pt);

	FUNC2(&dd->uctxt_lock);
	if (dd->f_hdrqempty(rcd)) {
		FUNC1(QIB_CTXT_WAITING_RCV, &rcd->flag);
		dd->f_rcvctrl(rcd->ppd, QIB_RCVCTRL_INTRAVAIL_ENB, rcd->ctxt);
		pollflag = 0;
	} else
		pollflag = POLLIN | POLLRDNORM;
	FUNC3(&dd->uctxt_lock);

	return pollflag;
}