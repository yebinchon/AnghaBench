#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct proc_dir_entry {struct net_device* data; } ;
struct proc_data {char* rbuffer; int maxwritelen; int /*<<< orphan*/  readlen; int /*<<< orphan*/  on_close; int /*<<< orphan*/ * wbuffer; scalar_t__ writelen; } ;
struct net_device {struct airo_info* ml_priv; } ;
struct inode {int dummy; } ;
struct file {char* private_data; } ;
struct airo_info {int dummy; } ;
struct TYPE_5__ {TYPE_1__* ssids; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ssid; int /*<<< orphan*/  len; } ;
typedef  TYPE_2__ SsidRid ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct proc_dir_entry* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proc_SSID_on_close ; 
 int /*<<< orphan*/  FUNC5 (struct airo_info*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct proc_data *data;
	struct proc_dir_entry *dp = FUNC0(inode);
	struct net_device *dev = dp->data;
	struct airo_info *ai = dev->ml_priv;
	int i;
	char *ptr;
	SsidRid SSID_rid;

	if ((file->private_data = FUNC3(sizeof(struct proc_data ), GFP_KERNEL)) == NULL)
		return -ENOMEM;
	data = (struct proc_data *)file->private_data;
	if ((data->rbuffer = FUNC2( 104, GFP_KERNEL )) == NULL) {
		FUNC1 (file->private_data);
		return -ENOMEM;
	}
	data->writelen = 0;
	data->maxwritelen = 33*3;
	/* allocate maxwritelen + 1; we'll want a sentinel */
	if ((data->wbuffer = FUNC3(33*3 + 1, GFP_KERNEL)) == NULL) {
		FUNC1 (data->rbuffer);
		FUNC1 (file->private_data);
		return -ENOMEM;
	}
	data->on_close = proc_SSID_on_close;

	FUNC5(ai, &SSID_rid);
	ptr = data->rbuffer;
	for (i = 0; i < 3; i++) {
		int j;
		size_t len = FUNC4(SSID_rid.ssids[i].len);
		if (!len)
			break;
		if (len > 32)
			len = 32;
		for (j = 0; j < len && SSID_rid.ssids[i].ssid[j]; j++)
			*ptr++ = SSID_rid.ssids[i].ssid[j];
		*ptr++ = '\n';
	}
	*ptr = '\0';
	data->readlen = FUNC6( data->rbuffer );
	return 0;
}