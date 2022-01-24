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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct virtqueue*) ; 
 void* FUNC2 (struct virtqueue*,unsigned int*) ; 

__attribute__((used)) static void FUNC3(struct virtqueue *vq, void (*fn)(void *buf))
{
	void *buf;
	unsigned int len;

	do {
		FUNC0(vq);
		while ((buf = FUNC2(vq, &len)) != NULL)
			fn(buf);
	} while (!FUNC1(vq));
}