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
struct pcmcia_socket {int resource_setup_done; int state; int /*<<< orphan*/  skt_mutex; TYPE_1__* callback; int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* requery ) (struct pcmcia_socket*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 size_t EINVAL ; 
 int SOCKET_CARDBUS ; 
 int SOCKET_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct pcmcia_socket*,int /*<<< orphan*/ ) ; 
 struct pcmcia_socket* FUNC6 (struct device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	unsigned long flags;
	struct pcmcia_socket *s = FUNC6(dev);

	if (!count)
		return -EINVAL;

	FUNC3(&s->lock, flags);
	if (!s->resource_setup_done)
		s->resource_setup_done = 1;
	FUNC4(&s->lock, flags);

	FUNC1(&s->skt_mutex);
	if ((s->callback) &&
	    (s->state & SOCKET_PRESENT) &&
	    !(s->state & SOCKET_CARDBUS)) {
		if (FUNC7(s->callback->owner)) {
			s->callback->requery(s, 0);
			FUNC0(s->callback->owner);
		}
	}
	FUNC2(&s->skt_mutex);

	return count;
}