#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wkr ;
struct proc_dir_entry {struct net_device* data; } ;
struct proc_data {char* rbuffer; int maxwritelen; int /*<<< orphan*/  readlen; int /*<<< orphan*/  on_close; int /*<<< orphan*/ * wbuffer; scalar_t__ writelen; } ;
struct net_device {struct airo_info* ml_priv; } ;
struct inode {int dummy; } ;
struct file {char* private_data; } ;
struct airo_info {int dummy; } ;
typedef  scalar_t__ __le16 ;
struct TYPE_4__ {scalar_t__ kindex; scalar_t__ klen; scalar_t__* mac; } ;
typedef  TYPE_1__ WepKeyRid ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct proc_dir_entry* FUNC0 (struct inode*) ; 
 int SUCCESS ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  proc_wepkey_on_close ; 
 int FUNC6 (struct airo_info*,TYPE_1__*,int,int) ; 
 scalar_t__ FUNC7 (char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10( struct inode *inode, struct file *file )
{
	struct proc_data *data;
	struct proc_dir_entry *dp = FUNC0(inode);
	struct net_device *dev = dp->data;
	struct airo_info *ai = dev->ml_priv;
	char *ptr;
	WepKeyRid wkr;
	__le16 lastindex;
	int j=0;
	int rc;

	if ((file->private_data = FUNC3(sizeof(struct proc_data ), GFP_KERNEL)) == NULL)
		return -ENOMEM;
	FUNC5(&wkr, 0, sizeof(wkr));
	data = (struct proc_data *)file->private_data;
	if ((data->rbuffer = FUNC3( 180, GFP_KERNEL )) == NULL) {
		FUNC2 (file->private_data);
		return -ENOMEM;
	}
	data->writelen = 0;
	data->maxwritelen = 80;
	if ((data->wbuffer = FUNC3( 80, GFP_KERNEL )) == NULL) {
		FUNC2 (data->rbuffer);
		FUNC2 (file->private_data);
		return -ENOMEM;
	}
	data->on_close = proc_wepkey_on_close;

	ptr = data->rbuffer;
	FUNC8(ptr, "No wep keys\n");
	rc = FUNC6(ai, &wkr, 1, 1);
	if (rc == SUCCESS) do {
		lastindex = wkr.kindex;
		if (wkr.kindex == FUNC1(0xffff)) {
			j += FUNC7(ptr+j, "Tx key = %d\n",
				     (int)wkr.mac[0]);
		} else {
			j += FUNC7(ptr+j, "Key %d set with length = %d\n",
				     FUNC4(wkr.kindex),
				     FUNC4(wkr.klen));
		}
		FUNC6(ai, &wkr, 0, 1);
	} while((lastindex != wkr.kindex) && (j < 180-30));

	data->readlen = FUNC9( data->rbuffer );
	return 0;
}