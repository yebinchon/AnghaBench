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
struct smscore_device_t {int /*<<< orphan*/  bufferslock; int /*<<< orphan*/  buffers; int /*<<< orphan*/  buffer_mng_waitq; } ;
struct smscore_buffer_t {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct smscore_device_t *coredev,
		struct smscore_buffer_t *cb) {
	FUNC1(&coredev->buffer_mng_waitq);
	FUNC0(&cb->entry, &coredev->buffers, &coredev->bufferslock);
}