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
struct TYPE_2__ {scalar_t__ next; } ;
struct smscore_device_t {int num_buffers; int /*<<< orphan*/  entry; struct smscore_device_t* fw_buf; int /*<<< orphan*/  common_buffer_phys; scalar_t__ common_buffer; int /*<<< orphan*/  common_buffer_size; TYPE_1__ buffers; } ;
struct smscore_buffer_t {int num_buffers; int /*<<< orphan*/  entry; struct smscore_buffer_t* fw_buf; int /*<<< orphan*/  common_buffer_phys; scalar_t__ common_buffer; int /*<<< orphan*/  common_buffer_size; TYPE_1__ buffers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_smscore_deviceslock ; 
 int /*<<< orphan*/  FUNC1 (struct smscore_device_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct smscore_device_t*) ; 
 int /*<<< orphan*/  FUNC9 (struct smscore_device_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct smscore_device_t*) ; 

void FUNC11(struct smscore_device_t *coredev)
{
	struct smscore_buffer_t *cb;
	int num_buffers = 0;
	int retry = 0;

	FUNC2(&g_smscore_deviceslock);

	/* Release input device (IR) resources */
	FUNC8(coredev);

	FUNC10(coredev);
	FUNC9(coredev, NULL, 0);

	/* at this point all buffers should be back
	 * onresponse must no longer be called */

	while (1) {
		while (!FUNC5(&coredev->buffers)) {
			cb = (struct smscore_buffer_t *) coredev->buffers.next;
			FUNC4(&cb->entry);
			FUNC1(cb);
			num_buffers++;
		}
		if (num_buffers == coredev->num_buffers)
			break;
		if (++retry > 10) {
			FUNC7("exiting although "
				 "not all buffers released.");
			break;
		}

		FUNC7("waiting for %d buffer(s)",
			 coredev->num_buffers - num_buffers);
		FUNC6(100);
	}

	FUNC7("freed %d buffers", num_buffers);

	if (coredev->common_buffer)
		FUNC0(NULL, coredev->common_buffer_size,
			coredev->common_buffer, coredev->common_buffer_phys);

	if (coredev->fw_buf != NULL)
		FUNC1(coredev->fw_buf);

	FUNC4(&coredev->entry);
	FUNC1(coredev);

	FUNC3(&g_smscore_deviceslock);

	FUNC7("device %p destroyed", coredev);
}