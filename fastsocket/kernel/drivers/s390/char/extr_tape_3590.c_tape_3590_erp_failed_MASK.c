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
struct tape_request {size_t op; } ;
struct tape_device {int dummy; } ;
struct irb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tape_device*,struct tape_request*,struct irb*) ; 
 int /*<<< orphan*/ * tape_op_verbose ; 

__attribute__((used)) static inline int
FUNC2(struct tape_device *device, struct tape_request *request,
		     struct irb *irb, int rc)
{
	FUNC0(3, "Error Recovery failed for %s\n",
		  tape_op_verbose[request->op]);
	FUNC1(device, request, irb);
	return rc;
}