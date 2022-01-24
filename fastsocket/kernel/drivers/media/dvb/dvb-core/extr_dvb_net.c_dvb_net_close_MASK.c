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
struct inode {int dummy; } ;
struct file {int /*<<< orphan*/ * f_op; struct dvb_device* private_data; } ;
struct dvb_net {int exit; } ;
struct dvb_device {int users; int /*<<< orphan*/  wait_queue; struct dvb_net* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct dvb_device *dvbdev = file->private_data;
	struct dvb_net *dvbnet = dvbdev->priv;

	FUNC0(inode, file);

	if(dvbdev->users == 1 && dvbnet->exit == 1) {
		FUNC1(file->f_op);
		file->f_op = NULL;
		FUNC2(&dvbdev->wait_queue);
	}
	return 0;
}