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
typedef  int /*<<< orphan*/  u64 ;
struct nodemgr_csr_info {scalar_t__ speed_unverified; int /*<<< orphan*/  generation; int /*<<< orphan*/  nodeid; int /*<<< orphan*/  host; } ;
struct csr1212_csr {int dummy; } ;

/* Variables and functions */
 int EINTR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct nodemgr_csr_info*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC3(struct csr1212_csr *csr, u64 addr,
			    void *buffer, void *__ci)
{
	struct nodemgr_csr_info *ci = (struct nodemgr_csr_info*)__ci;
	int i, error;

	for (i = 1; ; i++) {
		error = FUNC0(ci->host, ci->nodeid, ci->generation, addr,
				  buffer, 4);
		if (!error) {
			ci->speed_unverified = 0;
			break;
		}
		/* Give up after 3rd failure. */
		if (i == 3)
			break;

		/* The ieee1394_core guessed the node's speed capability from
		 * the self ID.  Check whether a lower speed works. */
		if (ci->speed_unverified) {
			error = FUNC2(ci, addr, buffer);
			if (!error)
				break;
		}
		if (FUNC1(334))
			return -EINTR;
	}
	return error;
}