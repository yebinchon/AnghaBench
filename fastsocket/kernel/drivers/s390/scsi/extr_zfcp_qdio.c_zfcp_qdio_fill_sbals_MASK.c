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
struct zfcp_queue_req {int dummy; } ;
struct zfcp_qdio {int /*<<< orphan*/  req_q_full; } ;
struct qdio_buffer_element {unsigned long length; void* addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (unsigned long,int) ; 
 struct qdio_buffer_element* FUNC2 (struct zfcp_qdio*,struct zfcp_queue_req*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_qdio*,struct zfcp_queue_req*) ; 

__attribute__((used)) static int FUNC4(struct zfcp_qdio *qdio,
				struct zfcp_queue_req *q_req,
				unsigned int sbtype, void *start_addr,
				unsigned int total_length)
{
	struct qdio_buffer_element *sbale;
	unsigned long remaining, length;
	void *addr;

	/* split segment up */
	for (addr = start_addr, remaining = total_length; remaining > 0;
	     addr += length, remaining -= length) {
		sbale = FUNC2(qdio, q_req, sbtype);
		if (!sbale) {
			FUNC0(&qdio->req_q_full);
			FUNC3(qdio, q_req);
			return -EINVAL;
		}

		/* new piece must not exceed next page boundary */
		length = FUNC1(remaining,
			     (PAGE_SIZE - ((unsigned long)addr &
					   (PAGE_SIZE - 1))));
		sbale->addr = addr;
		sbale->length = length;
	}
	return 0;
}