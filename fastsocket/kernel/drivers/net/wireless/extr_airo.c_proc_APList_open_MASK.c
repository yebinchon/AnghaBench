#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct proc_dir_entry {struct net_device* data; } ;
struct proc_data {char* rbuffer; int maxwritelen; int /*<<< orphan*/  readlen; int /*<<< orphan*/  on_close; int /*<<< orphan*/ * wbuffer; scalar_t__ writelen; } ;
struct net_device {struct airo_info* ml_priv; } ;
struct inode {int dummy; } ;
struct file {char* private_data; } ;
struct airo_info {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ ** ap; } ;
typedef  TYPE_1__ APListRid ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct proc_dir_entry* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proc_APList_on_close ; 
 int /*<<< orphan*/  FUNC4 (struct airo_info*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7( struct inode *inode, struct file *file ) {
	struct proc_data *data;
	struct proc_dir_entry *dp = FUNC0(inode);
	struct net_device *dev = dp->data;
	struct airo_info *ai = dev->ml_priv;
	int i;
	char *ptr;
	APListRid APList_rid;

	if ((file->private_data = FUNC3(sizeof(struct proc_data ), GFP_KERNEL)) == NULL)
		return -ENOMEM;
	data = (struct proc_data *)file->private_data;
	if ((data->rbuffer = FUNC2( 104, GFP_KERNEL )) == NULL) {
		FUNC1 (file->private_data);
		return -ENOMEM;
	}
	data->writelen = 0;
	data->maxwritelen = 4*6*3;
	if ((data->wbuffer = FUNC3( data->maxwritelen, GFP_KERNEL )) == NULL) {
		FUNC1 (data->rbuffer);
		FUNC1 (file->private_data);
		return -ENOMEM;
	}
	data->on_close = proc_APList_on_close;

	FUNC4(ai, &APList_rid);
	ptr = data->rbuffer;
	for( i = 0; i < 4; i++ ) {
// We end when we find a zero MAC
		if ( !*(int*)APList_rid.ap[i] &&
		     !*(int*)&APList_rid.ap[i][2]) break;
		ptr += FUNC5(ptr, "%pM\n", APList_rid.ap[i]);
	}
	if (i==0) ptr += FUNC5(ptr, "Not using specific APs\n");

	*ptr = '\0';
	data->readlen = FUNC6( data->rbuffer );
	return 0;
}