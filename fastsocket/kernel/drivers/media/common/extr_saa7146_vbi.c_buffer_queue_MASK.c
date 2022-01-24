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
struct videobuf_queue {struct file* priv_data; } ;
struct videobuf_buffer {int dummy; } ;
struct saa7146_vv {int /*<<< orphan*/  vbi_q; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct saa7146_buf {int dummy; } ;
struct file {struct saa7146_fh* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146_dev*,int /*<<< orphan*/ *,struct saa7146_buf*) ; 

__attribute__((used)) static void FUNC2(struct videobuf_queue *q, struct videobuf_buffer *vb)
{
	struct file *file = q->priv_data;
	struct saa7146_fh *fh = file->private_data;
	struct saa7146_dev *dev = fh->dev;
	struct saa7146_vv *vv = dev->vv_data;
	struct saa7146_buf *buf = (struct saa7146_buf *)vb;

	FUNC0(("vb:%p\n",vb));
	FUNC1(dev,&vv->vbi_q,buf);
}