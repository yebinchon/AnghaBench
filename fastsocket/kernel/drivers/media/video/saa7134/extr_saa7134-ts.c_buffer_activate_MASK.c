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
struct TYPE_3__ {int /*<<< orphan*/  timeout; } ;
struct saa7134_dev {int /*<<< orphan*/  ts_started; TYPE_1__ ts_q; } ;
struct TYPE_4__ {scalar_t__ field; int /*<<< orphan*/  state; } ;
struct saa7134_buf {TYPE_2__ vb; scalar_t__ top_seen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ TS_BUFFER_TIMEOUT ; 
 scalar_t__ V4L2_FIELD_TOP ; 
 int /*<<< orphan*/  VIDEOBUF_ACTIVE ; 
 int /*<<< orphan*/  FUNC2 (char*,struct saa7134_buf*,...) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7134_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct saa7134_dev *dev,
			   struct saa7134_buf *buf,
			   struct saa7134_buf *next)
{

	FUNC2("buffer_activate [%p]",buf);
	buf->vb.state = VIDEOBUF_ACTIVE;
	buf->top_seen = 0;

	if (NULL == next)
		next = buf;
	if (V4L2_FIELD_TOP == buf->vb.field) {
		FUNC2("- [top]     buf=%p next=%p\n",buf,next);
		FUNC7(FUNC0(5),FUNC4(buf));
		FUNC7(FUNC1(5),FUNC4(next));
	} else {
		FUNC2("- [bottom]  buf=%p next=%p\n",buf,next);
		FUNC7(FUNC0(5),FUNC4(next));
		FUNC7(FUNC1(5),FUNC4(buf));
	}

	/* start DMA */
	FUNC5(dev);

	FUNC3(&dev->ts_q.timeout, jiffies+TS_BUFFER_TIMEOUT);

	if (!dev->ts_started)
		FUNC6(dev);

	return 0;
}