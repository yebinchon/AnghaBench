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
struct TYPE_4__ {int /*<<< orphan*/  num; } ;
struct TYPE_3__ {scalar_t__ desc; } ;
struct virtqueue {scalar_t__ thread; TYPE_2__ config; TYPE_1__ vring; struct virtqueue* next; } ;
struct device {int running; struct virtqueue* vq; scalar_t__ feature_len; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  lg_last_avail ;

/* Variables and functions */
 int /*<<< orphan*/  LGUEST_VRING_ALIGN ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGTERM ; 
 void* SIG_IGN ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ kill_launcher ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct device *dev)
{
	struct virtqueue *vq;

	FUNC4("Resetting device %s\n", dev->name);

	/* Clear any features they've acked. */
	FUNC2(FUNC0(dev) + dev->feature_len, 0, dev->feature_len);

	/* We're going to be explicitly killing threads, so ignore them. */
	FUNC3(SIGCHLD, SIG_IGN);

	/* Zero out the virtqueues, get rid of their threads */
	for (vq = dev->vq; vq; vq = vq->next) {
		if (vq->thread != (pid_t)-1) {
			FUNC1(vq->thread, SIGTERM);
			FUNC6(vq->thread, NULL, 0);
			vq->thread = (pid_t)-1;
		}
		FUNC2(vq->vring.desc, 0,
		       FUNC5(vq->config.num, LGUEST_VRING_ALIGN));
		lg_last_avail(vq) = 0;
	}
	dev->running = false;

	/* Now we care if threads die. */
	FUNC3(SIGCHLD, (void *)kill_launcher);
}