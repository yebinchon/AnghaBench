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
typedef  scalar_t__ u32 ;
struct pdr {scalar_t__ next; } ;

/* Variables and functions */
 scalar_t__ PDI_END ; 
 scalar_t__ FUNC0 (struct pdr const*) ; 
 int FUNC1 (struct pdr const*) ; 

__attribute__((used)) static const struct pdr *
FUNC2(const struct pdr *first_pdr, u32 record_id, const void *end)
{
	const struct pdr *pdr = first_pdr;

	end -= sizeof(struct pdr);

	while (((void *) pdr <= end) &&
	       (FUNC0(pdr) != PDI_END)) {
		/*
		 * PDR area is currently not terminated by PDI_END.
		 * It's followed by CRC records, which have the type
		 * field where PDR has length.  The type can be 0 or 1.
		 */
		if (FUNC1(pdr) < 2)
			return NULL;

		/* If the record ID matches, we are done */
		if (FUNC0(pdr) == record_id)
			return pdr;

		pdr = (struct pdr *) pdr->next;
	}
	return NULL;
}