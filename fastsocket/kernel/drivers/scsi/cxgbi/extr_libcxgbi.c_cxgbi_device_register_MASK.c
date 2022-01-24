#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct cxgbi_hba {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct cxgbi_device {char* dd_data; int /*<<< orphan*/  list_head; TYPE_1__ pmap; struct cxgbi_hba** hbas; struct net_device** ports; } ;

/* Variables and functions */
 int CXGBI_DBG_DEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  cdev_list ; 
 int /*<<< orphan*/  cdev_mutex ; 
 struct cxgbi_device* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,struct cxgbi_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct cxgbi_device *FUNC7(unsigned int extra,
					   unsigned int nports)
{
	struct cxgbi_device *cdev;

	cdev = FUNC0(sizeof(*cdev) + extra + nports *
			(sizeof(struct cxgbi_hba *) +
			 sizeof(struct net_device *)),
			GFP_KERNEL);
	if (!cdev) {
		FUNC5("nport %d, OOM.\n", nports);
		return NULL;
	}
	cdev->ports = (struct net_device **)(cdev + 1);
	cdev->hbas = (struct cxgbi_hba **)(((char*)cdev->ports) + nports *
						sizeof(struct net_device *));
	if (extra)
		cdev->dd_data = ((char *)cdev->hbas) +
				nports * sizeof(struct cxgbi_hba *);
	FUNC6(&cdev->pmap.lock);

	FUNC3(&cdev_mutex);
	FUNC1(&cdev->list_head, &cdev_list);
	FUNC4(&cdev_mutex);

	FUNC2(1 << CXGBI_DBG_DEV,
		"cdev 0x%p, p# %u.\n", cdev, nports);
	return cdev;
}