#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qib_user_info {int spu_userversion; unsigned int spu_port_alg; scalar_t__ spu_subctxt_cnt; } ;
struct qib_filedata {int rec_cpu_num; int /*<<< orphan*/  pq; int /*<<< orphan*/  subctxt; struct qib_ctxtdata* rcd; } ;
struct qib_devdata {int flags; TYPE_3__* pcidev; int /*<<< orphan*/  unit; } ;
struct qib_ctxtdata {int /*<<< orphan*/  ctxt; struct qib_devdata* dd; } ;
struct file {struct qib_filedata* private_data; TYPE_1__* f_dentry; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;
struct TYPE_5__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int QIB_HAS_SEND_DMA ; 
 unsigned int QIB_PORT_ALG_ACROSS ; 
 unsigned int QIB_PORT_ALG_COUNT ; 
 int QIB_USER_MINOR_BASE ; 
 unsigned int QIB_USER_SWMAJOR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct file*) ; 
 TYPE_2__* current ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (int,struct file*,struct qib_user_info const*) ; 
 int FUNC6 (struct file*,struct qib_user_info const*) ; 
 int FUNC7 (struct file*,struct qib_user_info const*,unsigned int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  qib_cpulist ; 
 unsigned int qib_cpulist_count ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qib_mutex ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC16(struct file *fp, const struct qib_user_info *uinfo)
{
	int ret;
	int i_minor;
	unsigned swmajor, swminor, alg = QIB_PORT_ALG_ACROSS;

	/* Check to be sure we haven't already initialized this file */
	if (FUNC3(fp)) {
		ret = -EINVAL;
		goto done;
	}

	/* for now, if major version is different, bail */
	swmajor = uinfo->spu_userversion >> 16;
	if (swmajor != QIB_USER_SWMAJOR) {
		ret = -ENODEV;
		goto done;
	}

	swminor = uinfo->spu_userversion & 0xffff;

	if (swminor >= 11 && uinfo->spu_port_alg < QIB_PORT_ALG_COUNT)
		alg = uinfo->spu_port_alg;

	FUNC9(&qib_mutex);

	if (FUNC11(swmajor, swminor) &&
	    uinfo->spu_subctxt_cnt) {
		ret = FUNC6(fp, uinfo);
		if (ret) {
			if (ret > 0)
				ret = 0;
			goto done_chk_sdma;
		}
	}

	i_minor = FUNC8(fp->f_dentry->d_inode) - QIB_USER_MINOR_BASE;
	if (i_minor)
		ret = FUNC5(i_minor - 1, fp, uinfo);
	else
		ret = FUNC7(fp, uinfo, alg);

done_chk_sdma:
	if (!ret) {
		struct qib_filedata *fd = fp->private_data;
		const struct qib_ctxtdata *rcd = fd->rcd;
		const struct qib_devdata *dd = rcd->dd;
		unsigned int weight;

		if (dd->flags & QIB_HAS_SEND_DMA) {
			fd->pq = FUNC13(&dd->pcidev->dev,
							    dd->unit,
							    rcd->ctxt,
							    fd->subctxt);
			if (!fd->pq)
				ret = -ENOMEM;
		}

		/*
		 * If process has NOT already set it's affinity, select and
		 * reserve a processor for it, as a rendezvous for all
		 * users of the driver.  If they don't actually later
		 * set affinity to this cpu, or set it to some other cpu,
		 * it just means that sooner or later we don't recommend
		 * a cpu, and let the scheduler do it's best.
		 */
		weight = FUNC2(FUNC15(current));
		if (!ret && weight >= qib_cpulist_count) {
			int cpu;
			cpu = FUNC4(qib_cpulist,
						  qib_cpulist_count);
			if (cpu != qib_cpulist_count) {
				FUNC0(cpu, qib_cpulist);
				fd->rec_cpu_num = cpu;
			}
		} else if (weight == 1 &&
			FUNC14(FUNC1(FUNC15(current)),
				 qib_cpulist))
			FUNC12(dd->pcidev,
				"%s PID %u affinity set to cpu %d; already allocated\n",
				current->comm, current->pid,
				FUNC1(FUNC15(current)));
	}

	FUNC10(&qib_mutex);

done:
	return ret;
}