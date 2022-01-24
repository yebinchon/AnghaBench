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
struct vmlogrdr_priv_t {int dev_in_use; int buffer_free; int /*<<< orphan*/ * path; int /*<<< orphan*/  autopurge; scalar_t__ autorecording; scalar_t__ iucv_path_severed; scalar_t__ connection_established; int /*<<< orphan*/  system_service; int /*<<< orphan*/  priv_lock; int /*<<< orphan*/  receive_ready; } ;
struct inode {int dummy; } ;
struct file {int f_flags; int /*<<< orphan*/ * f_op; struct vmlogrdr_priv_t* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ENODEV ; 
 int ENOSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAXMINOR ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn_wait_queue ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct vmlogrdr_priv_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct vmlogrdr_priv_t* sys_ser ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  vmlogrdr_fops ; 
 int /*<<< orphan*/  vmlogrdr_iucv_handler ; 
 int FUNC12 (struct vmlogrdr_priv_t*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14 (struct inode *inode, struct file *filp)
{
	int dev_num = 0;
	struct vmlogrdr_priv_t * logptr = NULL;
	int connect_rc = 0;
	int ret;

	dev_num = FUNC1(inode);
	if (dev_num > MAXMINOR)
		return -ENODEV;
	logptr = &sys_ser[dev_num];

	/*
	 * only allow for blocking reads to be open
	 */
	if (filp->f_flags & O_NONBLOCK)
		return -ENOSYS;

	/* Besure this device hasn't already been opened */
	FUNC5();
	FUNC9(&logptr->priv_lock);
	if (logptr->dev_in_use)	{
		FUNC10(&logptr->priv_lock);
		FUNC11();
		return -EBUSY;
	}
	logptr->dev_in_use = 1;
	logptr->connection_established = 0;
	logptr->iucv_path_severed = 0;
	FUNC0(&logptr->receive_ready, 0);
	logptr->buffer_free = 1;
	FUNC10(&logptr->priv_lock);

	/* set the file options */
	filp->private_data = logptr;
	filp->f_op = &vmlogrdr_fops;

	/* start recording for this service*/
	if (logptr->autorecording) {
		ret = FUNC12(logptr,1,logptr->autopurge);
		if (ret)
			FUNC8("vmlogrdr: failed to start "
				   "recording automatically\n");
	}

	/* create connection to the system service */
	logptr->path = FUNC2(10, 0, GFP_KERNEL);
	if (!logptr->path)
		goto out_dev;
	connect_rc = FUNC3(logptr->path, &vmlogrdr_iucv_handler,
				       logptr->system_service, NULL, NULL,
				       logptr);
	if (connect_rc) {
		FUNC7("vmlogrdr: iucv connection to %s "
		       "failed with rc %i \n",
		       logptr->system_service, connect_rc);
		goto out_path;
	}

	/* We've issued the connect and now we must wait for a
	 * ConnectionComplete or ConnectinSevered Interrupt
	 * before we can continue to process.
	 */
	FUNC13(conn_wait_queue, (logptr->connection_established)
		   || (logptr->iucv_path_severed));
	if (logptr->iucv_path_severed)
		goto out_record;
 	ret = FUNC6(inode, filp);
	FUNC11();
	return ret;

out_record:
	if (logptr->autorecording)
		FUNC12(logptr,0,logptr->autopurge);
out_path:
	FUNC4(logptr->path);	/* kfree(NULL) is ok. */
	logptr->path = NULL;
out_dev:
	logptr->dev_in_use = 0;
	FUNC11();
	return -EIO;
}