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
struct mon_private {int /*<<< orphan*/  iucv_severed; int /*<<< orphan*/ * path; int /*<<< orphan*/  iucv_connected; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IUCV_IPRMDATA ; 
 int /*<<< orphan*/  MON_MSGLIM ; 
 int /*<<< orphan*/  MON_SERVICE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct mon_private* FUNC2 (struct device*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mon_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mon_conn_wait_queue ; 
 int /*<<< orphan*/  monreader_iucv_handler ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  user_data_connect ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct device *dev)
{
	struct mon_private *monpriv = FUNC2(dev);
	int rc;

	if (!monpriv)
		return 0;
	rc = -ENOMEM;
	monpriv->path = FUNC3(MON_MSGLIM, IUCV_IPRMDATA, GFP_KERNEL);
	if (!monpriv->path)
		goto out;
	rc = FUNC4(monpriv->path, &monreader_iucv_handler,
			       MON_SERVICE, NULL, user_data_connect, monpriv);
	if (rc) {
		FUNC6("Connecting to the z/VM *MONITOR system service "
		       "failed with rc=%i\n", rc);
		goto out_path;
	}
	FUNC7(mon_conn_wait_queue,
		   FUNC0(&monpriv->iucv_connected) ||
		   FUNC0(&monpriv->iucv_severed));
	if (FUNC0(&monpriv->iucv_severed))
		goto out_path;
	return 0;
out_path:
	rc = -EIO;
	FUNC5(monpriv->path);
	monpriv->path = NULL;
out:
	FUNC1(&monpriv->iucv_severed, 1);
	return rc;
}