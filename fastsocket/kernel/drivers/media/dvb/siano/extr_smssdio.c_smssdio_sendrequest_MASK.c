#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct smssdio_device {TYPE_1__* func; } ;
struct TYPE_4__ {size_t cur_blksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMSSDIO_DATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(void *context, void *buffer, size_t size)
{
	int ret = 0;
	struct smssdio_device *smsdev;

	smsdev = context;

	FUNC0(smsdev->func);

	while (size >= smsdev->func->cur_blksize) {
		ret = FUNC1(smsdev->func, SMSSDIO_DATA,
					buffer, smsdev->func->cur_blksize);
		if (ret)
			goto out;

		buffer += smsdev->func->cur_blksize;
		size -= smsdev->func->cur_blksize;
	}

	if (size) {
		ret = FUNC1(smsdev->func, SMSSDIO_DATA,
					buffer, size);
	}

out:
	FUNC2(smsdev->func);

	return ret;
}