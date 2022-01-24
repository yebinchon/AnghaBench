#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_9__ {int error; int /*<<< orphan*/  queue; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ sec; } ;
struct dmxdev_filter {scalar_t__ state; TYPE_4__ buffer; TYPE_3__* dev; TYPE_2__ params; int /*<<< orphan*/  timer; } ;
struct dmx_section_filter {struct dmxdev_filter* priv; } ;
typedef  enum dmx_success { ____Placeholder_dmx_success } dmx_success ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ DMXDEV_STATE_DONE ; 
 scalar_t__ DMXDEV_STATE_GO ; 
 int DMX_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(const u8 *buffer1, size_t buffer1_len,
				       const u8 *buffer2, size_t buffer2_len,
				       struct dmx_section_filter *filter,
				       enum dmx_success success)
{
	struct dmxdev_filter *dmxdevfilter = filter->priv;
	int ret;

	if (dmxdevfilter->buffer.error) {
		FUNC6(&dmxdevfilter->buffer.queue);
		return 0;
	}
	FUNC4(&dmxdevfilter->dev->lock);
	if (dmxdevfilter->state != DMXDEV_STATE_GO) {
		FUNC5(&dmxdevfilter->dev->lock);
		return 0;
	}
	FUNC0(&dmxdevfilter->timer);
	FUNC1("dmxdev: section callback %02x %02x %02x %02x %02x %02x\n",
		buffer1[0], buffer1[1],
		buffer1[2], buffer1[3], buffer1[4], buffer1[5]);
	ret = FUNC2(&dmxdevfilter->buffer, buffer1,
				      buffer1_len);
	if (ret == buffer1_len) {
		ret = FUNC2(&dmxdevfilter->buffer, buffer2,
					      buffer2_len);
	}
	if (ret < 0) {
		FUNC3(&dmxdevfilter->buffer);
		dmxdevfilter->buffer.error = ret;
	}
	if (dmxdevfilter->params.sec.flags & DMX_ONESHOT)
		dmxdevfilter->state = DMXDEV_STATE_DONE;
	FUNC5(&dmxdevfilter->dev->lock);
	FUNC6(&dmxdevfilter->buffer.queue);
	return 0;
}