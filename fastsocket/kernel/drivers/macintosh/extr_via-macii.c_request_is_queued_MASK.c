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
struct adb_request {struct adb_request* next; } ;

/* Variables and functions */
 struct adb_request* current_req ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

__attribute__((used)) static int FUNC2(struct adb_request *req) {
	struct adb_request *cur;
	unsigned long flags;
	FUNC1(flags);
	cur = current_req;
	while (cur) {
		if (cur == req) {
			FUNC0(flags);
			return 1;
		}
		cur = cur->next;
	}
	FUNC0(flags);
	return 0;
}