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
struct mon_private {struct mon_private** msg_array; scalar_t__ read_index; scalar_t__ write_index; int /*<<< orphan*/  msglim_count; int /*<<< orphan*/  read_ready; int /*<<< orphan*/  iucv_connected; int /*<<< orphan*/  iucv_severed; scalar_t__ path; } ;
struct inode {int dummy; } ;
struct file {struct mon_private* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MON_IN_USE ; 
 int MON_MSGLIM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mon_private*) ; 
 int /*<<< orphan*/  mon_in_use ; 
 int /*<<< orphan*/  monreader_device ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  user_data_sever ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *filp)
{
	int rc, i;
	struct mon_private *monpriv = filp->private_data;

	/*
	 * Close IUCV connection and unregister
	 */
	if (monpriv->path) {
		rc = FUNC4(monpriv->path, user_data_sever);
		if (rc)
			FUNC6("Disconnecting the z/VM *MONITOR system "
				   "service failed with rc=%i\n", rc);
		FUNC3(monpriv->path);
	}

	FUNC0(&monpriv->iucv_severed, 0);
	FUNC0(&monpriv->iucv_connected, 0);
	FUNC0(&monpriv->read_ready, 0);
	FUNC0(&monpriv->msglim_count, 0);
	monpriv->write_index  = 0;
	monpriv->read_index   = 0;
	FUNC2(monreader_device, NULL);

	for (i = 0; i < MON_MSGLIM; i++)
		FUNC5(monpriv->msg_array[i]);
	FUNC5(monpriv);
	FUNC1(MON_IN_USE, &mon_in_use);
	return 0;
}