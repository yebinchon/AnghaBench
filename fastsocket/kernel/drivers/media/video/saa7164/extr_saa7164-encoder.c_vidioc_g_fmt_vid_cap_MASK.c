#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int sizeimage; int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ colorspace; scalar_t__ bytesperline; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct saa7164_port {int ts_packet_size; int ts_packet_count; int /*<<< orphan*/  height; int /*<<< orphan*/  width; struct saa7164_dev* dev; } ;
struct saa7164_encoder_fh {struct saa7164_port* port; } ;
struct saa7164_dev {int dummy; } ;
struct file {struct saa7164_encoder_fh* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBGLVL_ENC ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_MPEG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *priv,
				struct v4l2_format *f)
{
	struct saa7164_encoder_fh *fh = file->private_data;
	struct saa7164_port *port = fh->port;
	struct saa7164_dev *dev = port->dev;

	f->fmt.pix.pixelformat  = V4L2_PIX_FMT_MPEG;
	f->fmt.pix.bytesperline = 0;
	f->fmt.pix.sizeimage    =
		port->ts_packet_size * port->ts_packet_count;
	f->fmt.pix.colorspace   = 0;
	f->fmt.pix.width        = port->width;
	f->fmt.pix.height       = port->height;

	FUNC0(DBGLVL_ENC, "VIDIOC_G_FMT: w: %d, h: %d\n",
		port->width, port->height);

	return 0;
}