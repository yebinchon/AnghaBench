#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  timeout; } ;
struct saa7134_dev {TYPE_4__ video_q; } ;
struct TYPE_7__ {unsigned long width; unsigned long height; int /*<<< orphan*/  field; int /*<<< orphan*/  state; } ;
struct saa7134_buf {TYPE_3__ vb; TYPE_2__* fmt; TYPE_1__* pt; scalar_t__ top_seen; } ;
struct TYPE_6__ {int depth; unsigned long hshift; unsigned long vshift; scalar_t__ uvswap; scalar_t__ planar; scalar_t__ wswap; scalar_t__ bswap; int /*<<< orphan*/  pm; scalar_t__ yuv; } ;
struct TYPE_5__ {int dma; } ;

/* Variables and functions */
 scalar_t__ BUFFER_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAA7134_OFMT_VIDEO_A ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 unsigned long SAA7134_RS_CONTROL_BSWAP ; 
 int SAA7134_RS_CONTROL_BURST_16 ; 
 int SAA7134_RS_CONTROL_ME ; 
 unsigned long SAA7134_RS_CONTROL_WSWAP ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  TASK_A ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIDEOBUF_ACTIVE ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned long FUNC8 (struct saa7134_buf*) ; 
 int /*<<< orphan*/  FUNC9 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct saa7134_dev*,int /*<<< orphan*/ ,unsigned long,unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct saa7134_dev *dev,
			   struct saa7134_buf *buf,
			   struct saa7134_buf *next)
{
	unsigned long base,control,bpl;
	unsigned long bpl_uv,lines_uv,base2,base3,tmp; /* planar */

	FUNC6("buffer_activate buf=%p\n",buf);
	buf->vb.state = VIDEOBUF_ACTIVE;
	buf->top_seen = 0;

	FUNC13(dev,TASK_A,buf->vb.width,buf->vb.height,
		 FUNC5(buf->vb.field));
	if (buf->fmt->yuv)
		FUNC10(FUNC0(TASK_A), 0x3f, 0x03);
	else
		FUNC10(FUNC0(TASK_A), 0x3f, 0x01);
	FUNC11(SAA7134_OFMT_VIDEO_A, buf->fmt->pm);

	/* DMA: setup channel 0 (= Video Task A0) */
	base  = FUNC8(buf);
	if (buf->fmt->planar)
		bpl = buf->vb.width;
	else
		bpl = (buf->vb.width * buf->fmt->depth) / 8;
	control = SAA7134_RS_CONTROL_BURST_16 |
		SAA7134_RS_CONTROL_ME |
		(buf->pt->dma >> 12);
	if (buf->fmt->bswap)
		control |= SAA7134_RS_CONTROL_BSWAP;
	if (buf->fmt->wswap)
		control |= SAA7134_RS_CONTROL_WSWAP;
	if (FUNC5(buf->vb.field)) {
		/* interlaced */
		FUNC12(FUNC1(0),base);
		FUNC12(FUNC2(0),base+bpl);
		FUNC12(FUNC4(0),bpl*2);
	} else {
		/* non-interlaced */
		FUNC12(FUNC1(0),base);
		FUNC12(FUNC2(0),base);
		FUNC12(FUNC4(0),bpl);
	}
	FUNC12(FUNC3(0),control);

	if (buf->fmt->planar) {
		/* DMA: setup channel 4+5 (= planar task A) */
		bpl_uv   = bpl >> buf->fmt->hshift;
		lines_uv = buf->vb.height >> buf->fmt->vshift;
		base2    = base + bpl * buf->vb.height;
		base3    = base2 + bpl_uv * lines_uv;
		if (buf->fmt->uvswap)
			tmp = base2, base2 = base3, base3 = tmp;
		FUNC6("uv: bpl=%ld lines=%ld base2/3=%ld/%ld\n",
			bpl_uv,lines_uv,base2,base3);
		if (FUNC5(buf->vb.field)) {
			/* interlaced */
			FUNC12(FUNC1(4),base2);
			FUNC12(FUNC2(4),base2+bpl_uv);
			FUNC12(FUNC4(4),bpl_uv*2);
			FUNC12(FUNC1(5),base3);
			FUNC12(FUNC2(5),base3+bpl_uv);
			FUNC12(FUNC4(5),bpl_uv*2);
		} else {
			/* non-interlaced */
			FUNC12(FUNC1(4),base2);
			FUNC12(FUNC2(4),base2);
			FUNC12(FUNC4(4),bpl_uv);
			FUNC12(FUNC1(5),base3);
			FUNC12(FUNC2(5),base3);
			FUNC12(FUNC4(5),bpl_uv);
		}
		FUNC12(FUNC3(4),control);
		FUNC12(FUNC3(5),control);
	}

	/* start DMA */
	FUNC9(dev);
	FUNC7(&dev->video_q.timeout, jiffies+BUFFER_TIMEOUT);
	return 0;
}