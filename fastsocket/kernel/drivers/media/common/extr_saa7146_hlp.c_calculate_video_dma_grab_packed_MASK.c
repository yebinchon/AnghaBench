#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct saa7146_vv {scalar_t__ vflip; int last_field; TYPE_2__* standard; } ;
struct saa7146_video_dma {int pitch; int base_page; scalar_t__ prot_addr; scalar_t__ base_even; scalar_t__ base_odd; scalar_t__ num_line_byte; } ;
struct saa7146_format {int depth; int swap; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct saa7146_buf {TYPE_3__* pt; TYPE_1__* fmt; } ;
typedef  enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_6__ {int dma; scalar_t__ offset; } ;
struct TYPE_5__ {int v_field; scalar_t__ h_pixels; } ;
struct TYPE_4__ {int width; int height; int bytesperline; int field; int /*<<< orphan*/  pixelformat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ME1 ; 
 int V4L2_FIELD_ALTERNATE ; 
 int V4L2_FIELD_BOTTOM ; 
 scalar_t__ FUNC1 (int) ; 
 int V4L2_FIELD_TOP ; 
 struct saa7146_format* FUNC2 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7146_dev*,int,struct saa7146_video_dma*) ; 
 int /*<<< orphan*/ * v4l2_field_names ; 

__attribute__((used)) static int FUNC4(struct saa7146_dev* dev, struct saa7146_buf *buf)
{
	struct saa7146_vv *vv = dev->vv_data;
	struct saa7146_video_dma vdma1;

	struct saa7146_format *sfmt = FUNC2(dev,buf->fmt->pixelformat);

	int width = buf->fmt->width;
	int height = buf->fmt->height;
	int bytesperline = buf->fmt->bytesperline;
	enum v4l2_field field = buf->fmt->field;

	int depth = sfmt->depth;

	FUNC0(("[size=%dx%d,fields=%s]\n",
		width,height,v4l2_field_names[field]));

	if( bytesperline != 0) {
		vdma1.pitch = bytesperline*2;
	} else {
		vdma1.pitch = (width*depth*2)/8;
	}
	vdma1.num_line_byte	= ((vv->standard->v_field<<16) + vv->standard->h_pixels);
	vdma1.base_page		= buf->pt[0].dma | ME1 | sfmt->swap;

	if( 0 != vv->vflip ) {
		vdma1.prot_addr	= buf->pt[0].offset;
		vdma1.base_even	= buf->pt[0].offset+(vdma1.pitch/2)*height;
		vdma1.base_odd	= vdma1.base_even - (vdma1.pitch/2);
	} else {
		vdma1.base_even	= buf->pt[0].offset;
		vdma1.base_odd	= vdma1.base_even + (vdma1.pitch/2);
		vdma1.prot_addr	= buf->pt[0].offset+(vdma1.pitch/2)*height;
	}

	if (FUNC1(field)) {
	} else if (field == V4L2_FIELD_ALTERNATE) {
		/* fixme */
		if ( vv->last_field == V4L2_FIELD_TOP ) {
			vdma1.base_odd	= vdma1.prot_addr;
			vdma1.pitch /= 2;
		} else if ( vv->last_field == V4L2_FIELD_BOTTOM ) {
			vdma1.base_odd	= vdma1.base_even;
			vdma1.base_even = vdma1.prot_addr;
			vdma1.pitch /= 2;
		}
	} else if (field == V4L2_FIELD_TOP) {
		vdma1.base_odd	= vdma1.prot_addr;
		vdma1.pitch /= 2;
	} else if (field == V4L2_FIELD_BOTTOM) {
		vdma1.base_odd	= vdma1.base_even;
		vdma1.base_even = vdma1.prot_addr;
		vdma1.pitch /= 2;
	}

	if( 0 != vv->vflip ) {
		vdma1.pitch *= -1;
	}

	FUNC3(dev, 1, &vdma1);
	return 0;
}