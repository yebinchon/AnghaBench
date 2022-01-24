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
struct fw_address_region {int start; int end; } ;
struct fw_address_handler {int length; int offset; int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  address_handler_list ; 
 int /*<<< orphan*/  address_handler_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct fw_address_handler* FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct fw_address_handler *handler,
				const struct fw_address_region *region)
{
	struct fw_address_handler *other;
	unsigned long flags;
	int ret = -EBUSY;

	if (region->start & 0xffff000000000003ULL ||
	    region->end   & 0xffff000000000003ULL ||
	    region->start >= region->end ||
	    handler->length & 3 ||
	    handler->length == 0)
		return -EINVAL;

	FUNC2(&address_handler_lock, flags);

	handler->offset = region->start;
	while (handler->offset + handler->length <= region->end) {
		other =
		    FUNC1(&address_handler_list,
						       handler->offset,
						       handler->length);
		if (other != NULL) {
			handler->offset += other->length;
		} else {
			FUNC0(&handler->link, &address_handler_list);
			ret = 0;
			break;
		}
	}

	FUNC3(&address_handler_lock, flags);

	return ret;
}