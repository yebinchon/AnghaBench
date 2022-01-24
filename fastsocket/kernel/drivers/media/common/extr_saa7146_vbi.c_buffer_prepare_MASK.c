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
struct videobuf_queue {struct file* priv_data; } ;
struct videobuf_dmabuf {int /*<<< orphan*/  sglen; int /*<<< orphan*/  sglist; } ;
struct videobuf_buffer {int dummy; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {int /*<<< orphan*/  pci; } ;
struct TYPE_3__ {scalar_t__ baddr; int bsize; int size; scalar_t__ state; int width; int height; int field; } ;
struct saa7146_buf {int /*<<< orphan*/  activate; TYPE_1__ vb; int /*<<< orphan*/ * pt; } ;
struct file {struct saa7146_fh* private_data; } ;
typedef  enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 scalar_t__ VIDEOBUF_NEEDS_INIT ; 
 scalar_t__ VIDEOBUF_PREPARED ; 
 int /*<<< orphan*/  buffer_activate ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146_dev*,struct videobuf_queue*,struct saa7146_buf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int vbi_pixel_to_capture ; 
 int FUNC5 (struct videobuf_queue*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct videobuf_dmabuf* FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct videobuf_queue *q, struct videobuf_buffer *vb,enum v4l2_field field)
{
	struct file *file = q->priv_data;
	struct saa7146_fh *fh = file->private_data;
	struct saa7146_dev *dev = fh->dev;
	struct saa7146_buf *buf = (struct saa7146_buf *)vb;

	int err = 0;
	int lines, llength, size;

	lines   = 16 * 2 ; /* 2 fields */
	llength = vbi_pixel_to_capture;
	size = lines * llength;

	FUNC0(("vb:%p\n",vb));

	if (0 != buf->vb.baddr  &&  buf->vb.bsize < size) {
		FUNC0(("size mismatch.\n"));
		return -EINVAL;
	}

	if (buf->vb.size != size)
		FUNC1(dev,q,buf);

	if (VIDEOBUF_NEEDS_INIT == buf->vb.state) {
		struct videobuf_dmabuf *dma=FUNC6(&buf->vb);

		buf->vb.width  = llength;
		buf->vb.height = lines;
		buf->vb.size   = size;
		buf->vb.field  = field;	// FIXME: check this

		FUNC4(dev->pci, &buf->pt[2]);
		FUNC2(dev->pci, &buf->pt[2]);

		err = FUNC5(q,&buf->vb, NULL);
		if (err)
			goto oops;
		err = FUNC3(dev->pci, &buf->pt[2],
						 dma->sglist, dma->sglen);
		if (0 != err)
			return err;
	}
	buf->vb.state = VIDEOBUF_PREPARED;
	buf->activate = buffer_activate;

	return 0;

 oops:
	FUNC0(("error out.\n"));
	FUNC1(dev,q,buf);

	return err;
}