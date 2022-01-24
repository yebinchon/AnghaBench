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
struct TYPE_6__ {int /*<<< orphan*/  timeout; } ;
struct saa7134_dev {TYPE_3__ vbi_q; } ;
struct TYPE_5__ {int size; unsigned long width; int /*<<< orphan*/  state; } ;
struct saa7134_buf {TYPE_2__ vb; TYPE_1__* pt; scalar_t__ top_seen; } ;
struct TYPE_4__ {int dma; } ;

/* Variables and functions */
 scalar_t__ BUFFER_TIMEOUT ; 
 int /*<<< orphan*/  SAA7134_OFMT_DATA_A ; 
 int /*<<< orphan*/  SAA7134_OFMT_DATA_B ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SAA7134_RS_CONTROL_BURST_16 ; 
 int SAA7134_RS_CONTROL_ME ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  TASK_A ; 
 int /*<<< orphan*/  TASK_B ; 
 int /*<<< orphan*/  VIDEOBUF_ACTIVE ; 
 int /*<<< orphan*/  FUNC4 (char*,struct saa7134_buf*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned long FUNC6 (struct saa7134_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct saa7134_dev*,struct saa7134_buf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct saa7134_dev *dev,
			   struct saa7134_buf *buf,
			   struct saa7134_buf *next)
{
	unsigned long control,base;

	FUNC4("buffer_activate [%p]\n",buf);
	buf->vb.state = VIDEOBUF_ACTIVE;
	buf->top_seen = 0;

	FUNC10(dev,buf,TASK_A);
	FUNC10(dev,buf,TASK_B);
	FUNC8(SAA7134_OFMT_DATA_A, 0x06);
	FUNC8(SAA7134_OFMT_DATA_B, 0x06);

	/* DMA: setup channel 2+3 (= VBI Task A+B) */
	base    = FUNC6(buf);
	control = SAA7134_RS_CONTROL_BURST_16 |
		SAA7134_RS_CONTROL_ME |
		(buf->pt->dma >> 12);
	FUNC9(FUNC0(2),base);
	FUNC9(FUNC1(2),base + buf->vb.size/2);
	FUNC9(FUNC3(2),buf->vb.width);
	FUNC9(FUNC2(2),control);
	FUNC9(FUNC0(3),base);
	FUNC9(FUNC1(3),base + buf->vb.size/2);
	FUNC9(FUNC3(3),buf->vb.width);
	FUNC9(FUNC2(3),control);

	/* start DMA */
	FUNC7(dev);
	FUNC5(&dev->vbi_q.timeout, jiffies+BUFFER_TIMEOUT);

	return 0;
}