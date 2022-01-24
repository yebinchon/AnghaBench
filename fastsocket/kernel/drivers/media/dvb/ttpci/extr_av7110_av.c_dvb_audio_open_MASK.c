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
struct inode {int dummy; } ;
struct file {struct dvb_device* private_data; } ;
struct dvb_device {struct av7110* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  stream_source; } ;
struct av7110 {TYPE_1__ audiostate; int /*<<< orphan*/  aout; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_SOURCE_DEMUX ; 
 int /*<<< orphan*/  FUNC0 (int,char*,struct av7110*) ; 
 int FUNC1 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct dvb_device *dvbdev = file->private_data;
	struct av7110 *av7110 = dvbdev->priv;
	int err = FUNC1(inode, file);

	FUNC0(2, "av7110:%p, \n", av7110);

	if (err < 0)
		return err;
	FUNC2(&av7110->aout);
	av7110->audiostate.stream_source = AUDIO_SOURCE_DEMUX;
	return 0;
}