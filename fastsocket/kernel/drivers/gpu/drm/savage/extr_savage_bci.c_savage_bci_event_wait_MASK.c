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
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_4__ {int* status_ptr; unsigned int event_wrap; unsigned int event_counter; int (* wait_evnt ) (TYPE_1__*,unsigned int) ;} ;
typedef  TYPE_1__ drm_savage_private_t ;
struct TYPE_5__ {int count; } ;
typedef  TYPE_2__ drm_savage_event_wait_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAVAGE_STATUS_WORD1 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (TYPE_1__*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_savage_private_t *dev_priv = dev->dev_private;
	drm_savage_event_wait_t *event = data;
	unsigned int event_e, hw_e;
	unsigned int event_w, hw_w;

	FUNC0("\n");

	FUNC2();
	if (dev_priv->status_ptr)
		hw_e = dev_priv->status_ptr[1] & 0xffff;
	else
		hw_e = FUNC1(SAVAGE_STATUS_WORD1) & 0xffff;
	hw_w = dev_priv->event_wrap;
	if (hw_e > dev_priv->event_counter)
		hw_w--;		/* hardware hasn't passed the last wrap yet */

	event_e = event->count & 0xffff;
	event_w = event->count >> 16;

	/* Don't need to wait if
	 * - event counter wrapped since the event was emitted or
	 * - the hardware has advanced up to or over the event to wait for.
	 */
	if (event_w < hw_w || (event_w == hw_w && event_e <= hw_e))
		return 0;
	else
		return dev_priv->wait_evnt(dev_priv, event_e);
}