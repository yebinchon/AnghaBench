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
struct socket_data {int /*<<< orphan*/  io_db; } ;
struct pcmcia_socket {struct socket_data* resource_data; } ;

/* Variables and functions */
#define  ADD_MANAGED_RESOURCE 129 
 int EBUSY ; 
 int EINVAL ; 
 unsigned long IO_SPACE_LIMIT ; 
#define  REMOVE_MANAGED_RESOURCE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_socket*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  probe_io ; 
 int /*<<< orphan*/  rsrc_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct pcmcia_socket *s, unsigned int action, unsigned long start, unsigned long end)
{
	struct socket_data *data = s->resource_data;
	unsigned long size = end - start + 1;
	int ret = 0;

	if (end < start)
		return -EINVAL;

	if (end > IO_SPACE_LIMIT)
		return -EINVAL;

	FUNC2(&rsrc_mutex);
	switch (action) {
	case ADD_MANAGED_RESOURCE:
		if (FUNC0(&data->io_db, start, size) != 0) {
			ret = -EBUSY;
			break;
		}
#ifdef CONFIG_PCMCIA_PROBE
		if (probe_io)
			do_io_probe(s, start, size);
#endif
		break;
	case REMOVE_MANAGED_RESOURCE:
		FUNC4(&data->io_db, start, size);
		break;
	default:
		ret = -EINVAL;
		break;
	}
	FUNC3(&rsrc_mutex);

	return ret;
}