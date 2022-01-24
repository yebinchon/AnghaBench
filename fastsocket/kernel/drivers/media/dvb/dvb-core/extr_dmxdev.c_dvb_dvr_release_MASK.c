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
struct inode {int dummy; } ;
struct file {int f_flags; int /*<<< orphan*/ * f_op; struct dvb_device* private_data; } ;
struct dvb_device {int users; int /*<<< orphan*/  wait_queue; int /*<<< orphan*/  readers; struct dmxdev* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;
struct dmxdev {int exit; int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; TYPE_1__ dvr_buffer; int /*<<< orphan*/  dvr_orig_fe; TYPE_2__* demux; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* connect_frontend ) (TYPE_2__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* disconnect_frontend ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int O_ACCMODE ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct file *file)
{
	struct dvb_device *dvbdev = file->private_data;
	struct dmxdev *dmxdev = dvbdev->priv;

	FUNC2(&dmxdev->mutex);

	if ((file->f_flags & O_ACCMODE) == O_WRONLY) {
		dmxdev->demux->disconnect_frontend(dmxdev->demux);
		dmxdev->demux->connect_frontend(dmxdev->demux,
						dmxdev->dvr_orig_fe);
	}
	if ((file->f_flags & O_ACCMODE) == O_RDONLY) {
		dvbdev->readers++;
		if (dmxdev->dvr_buffer.data) {
			void *mem = dmxdev->dvr_buffer.data;
			FUNC1();
			FUNC4(&dmxdev->lock);
			dmxdev->dvr_buffer.data = NULL;
			FUNC5(&dmxdev->lock);
			FUNC8(mem);
		}
	}
	/* TODO */
	dvbdev->users--;
	if (dvbdev->users == 1 && dmxdev->exit == 1) {
		FUNC0(file->f_op);
		file->f_op = NULL;
		FUNC3(&dmxdev->mutex);
		FUNC9(&dvbdev->wait_queue);
	} else
		FUNC3(&dmxdev->mutex);

	return 0;
}