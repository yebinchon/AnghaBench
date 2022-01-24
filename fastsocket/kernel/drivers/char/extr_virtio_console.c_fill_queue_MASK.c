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
struct virtqueue {int dummy; } ;
struct port_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct virtqueue*,struct port_buffer*) ; 
 struct port_buffer* FUNC1 (struct virtqueue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct port_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC5(struct virtqueue *vq, spinlock_t *lock)
{
	struct port_buffer *buf;
	unsigned int nr_added_bufs;
	int ret;

	nr_added_bufs = 0;
	do {
		buf = FUNC1(vq, PAGE_SIZE, 0);
		if (!buf)
			break;

		FUNC3(lock);
		ret = FUNC0(vq, buf);
		if (ret < 0) {
			FUNC4(lock);
			FUNC2(buf);
			break;
		}
		nr_added_bufs++;
		FUNC4(lock);
	} while (ret > 0);

	return nr_added_bufs;
}