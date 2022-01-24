#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int index; TYPE_3__* driver; } ;
struct inode {int dummy; } ;
struct TYPE_12__ {int rows; int cols; } ;
struct idal_buffer {TYPE_4__ view; struct idal_buffer* rdbuf; int /*<<< orphan*/  fs_pid; int /*<<< orphan*/  wait; } ;
struct fs3270 {TYPE_4__ view; struct fs3270* rdbuf; int /*<<< orphan*/  fs_pid; int /*<<< orphan*/  wait; } ;
struct TYPE_10__ {TYPE_1__* dentry; } ;
struct file {struct idal_buffer* private_data; TYPE_2__ f_path; } ;
struct TYPE_11__ {scalar_t__ major; } ;
struct TYPE_9__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 scalar_t__ IBM_FS3270_MAJOR ; 
 scalar_t__ IBM_TTY3270_MAJOR ; 
 scalar_t__ FUNC0 (struct idal_buffer*) ; 
 int FUNC1 (struct idal_buffer*) ; 
 int RAW3270_FIRSTMINOR ; 
 int /*<<< orphan*/  current ; 
 struct idal_buffer* FUNC2 () ; 
 int /*<<< orphan*/  fs3270_fn ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 struct tty_struct* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct idal_buffer* FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (TYPE_4__*) ; 
 int FUNC12 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC18 () ; 

__attribute__((used)) static int
FUNC19(struct inode *inode, struct file *filp)
{
	struct fs3270 *fp;
	struct idal_buffer *ib;
	int minor, rc = 0;

	if (FUNC7(filp->f_path.dentry->d_inode) != IBM_FS3270_MAJOR)
		return -ENODEV;
	minor = FUNC8(filp->f_path.dentry->d_inode);
	/* Check for minor 0 multiplexer. */
	if (minor == 0) {
		struct tty_struct *tty = FUNC4();
		if (!tty || tty->driver->major != IBM_TTY3270_MAJOR) {
			FUNC17(tty);
			return -ENODEV;
		}
		minor = tty->index + RAW3270_FIRSTMINOR;
		FUNC17(tty);
	}
	FUNC10();
	/* Check if some other program is already using fullscreen mode. */
	fp = (struct fs3270 *) FUNC14(&fs3270_fn, minor);
	if (!FUNC0(fp)) {
		FUNC15(&fp->view);
		rc = -EBUSY;
		goto out;
	}
	/* Allocate fullscreen view structure. */
	fp = FUNC2();
	if (FUNC0(fp)) {
		rc = FUNC1(fp);
		goto out;
	}

	FUNC9(&fp->wait);
	fp->fs_pid = FUNC5(FUNC16(current));
	rc = FUNC12(&fp->view, &fs3270_fn, minor);
	if (rc) {
		FUNC3(&fp->view);
		goto out;
	}

	/* Allocate idal-buffer. */
	ib = FUNC6(2*fp->view.rows*fp->view.cols + 5, 0);
	if (FUNC0(ib)) {
		FUNC15(&fp->view);
		FUNC13(&fp->view);
		rc = FUNC1(fp);
		goto out;
	}
	fp->rdbuf = ib;

	rc = FUNC11(&fp->view);
	if (rc) {
		FUNC15(&fp->view);
		FUNC13(&fp->view);
		goto out;
	}
	filp->private_data = fp;
out:
	FUNC18();
	return rc;
}