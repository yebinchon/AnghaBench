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
typedef  union ns_mem {int dummy; } ns_mem ;
struct TYPE_6__ {int pgnum; int /*<<< orphan*/  pgszoob; } ;
struct nandsim {void* pages_written; int /*<<< orphan*/  nand_pages_slab; TYPE_3__ geom; TYPE_2__* pages; struct file* cfile; int /*<<< orphan*/  file_buf; } ;
struct file {TYPE_1__* f_op; } ;
struct TYPE_5__ {int /*<<< orphan*/ * byte; } ;
struct TYPE_4__ {int /*<<< orphan*/  aio_write; int /*<<< orphan*/  write; int /*<<< orphan*/  aio_read; int /*<<< orphan*/  read; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int O_CREAT ; 
 int O_LARGEFILE ; 
 int O_RDWR ; 
 int FUNC2 (struct file*) ; 
 scalar_t__ cache_file ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ *) ; 
 struct file* FUNC4 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct nandsim *ns)
{
	struct file *cfile;
	int i, err;

	if (cache_file) {
		cfile = FUNC4(cache_file, O_CREAT | O_RDWR | O_LARGEFILE, 0600);
		if (FUNC0(cfile))
			return FUNC2(cfile);
		if (!cfile->f_op || (!cfile->f_op->read && !cfile->f_op->aio_read)) {
			FUNC1("alloc_device: cache file not readable\n");
			err = -EINVAL;
			goto err_close;
		}
		if (!cfile->f_op->write && !cfile->f_op->aio_write) {
			FUNC1("alloc_device: cache file not writeable\n");
			err = -EINVAL;
			goto err_close;
		}
		ns->pages_written = FUNC9(ns->geom.pgnum);
		if (!ns->pages_written) {
			FUNC1("alloc_device: unable to allocate pages written array\n");
			err = -ENOMEM;
			goto err_close;
		}
		ns->file_buf = FUNC5(ns->geom.pgszoob, GFP_KERNEL);
		if (!ns->file_buf) {
			FUNC1("alloc_device: unable to allocate file buf\n");
			err = -ENOMEM;
			goto err_free;
		}
		ns->cfile = cfile;
		FUNC7(ns->pages_written, 0, ns->geom.pgnum);
		return 0;
	}

	ns->pages = FUNC9(ns->geom.pgnum * sizeof(union ns_mem));
	if (!ns->pages) {
		FUNC1("alloc_device: unable to allocate page array\n");
		return -ENOMEM;
	}
	for (i = 0; i < ns->geom.pgnum; i++) {
		ns->pages[i].byte = NULL;
	}
	ns->nand_pages_slab = FUNC6("nandsim",
						ns->geom.pgszoob, 0, 0, NULL);
	if (!ns->nand_pages_slab) {
		FUNC1("cache_create: unable to create kmem_cache\n");
		return -ENOMEM;
	}

	return 0;

err_free:
	FUNC8(ns->pages_written);
err_close:
	FUNC3(cfile, NULL);
	return err;
}