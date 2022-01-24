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
struct proc_dir_entry {struct net_device* data; } ;
struct proc_data {int writelen; scalar_t__* wbuffer; } ;
struct net_device {struct airo_info* ml_priv; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct airo_info {int dummy; } ;
struct TYPE_4__ {int** ap; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  APList_rid ;
typedef  TYPE_1__ APListRid ;

/* Variables and functions */
 struct proc_dir_entry* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct airo_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct airo_info*,int) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct airo_info*,TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC7( struct inode *inode, struct file *file ) {
	struct proc_data *data = (struct proc_data *)file->private_data;
	struct proc_dir_entry *dp = FUNC0(inode);
	struct net_device *dev = dp->data;
	struct airo_info *ai = dev->ml_priv;
	APListRid APList_rid;
	int i;

	if ( !data->writelen ) return;

	FUNC5( &APList_rid, 0, sizeof(APList_rid) );
	APList_rid.len = FUNC1(sizeof(APList_rid));

	for( i = 0; i < 4 && data->writelen >= (i+1)*6*3; i++ ) {
		int j;
		for( j = 0; j < 6*3 && data->wbuffer[j+i*6*3]; j++ ) {
			switch(j%3) {
			case 0:
				APList_rid.ap[i][j/3]=
					FUNC4(data->wbuffer[j+i*6*3])<<4;
				break;
			case 1:
				APList_rid.ap[i][j/3]|=
					FUNC4(data->wbuffer[j+i*6*3]);
				break;
			}
		}
	}
	FUNC2(ai, 1);
	FUNC6(ai, &APList_rid, 1);
	FUNC3(ai, 1);
}