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
struct pending_request {int /*<<< orphan*/  packet; struct pending_request* data; scalar_t__ free_data; struct pending_request* ibs; int /*<<< orphan*/  data_size; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iso_buffer_size ; 
 int /*<<< orphan*/  FUNC3 (struct pending_request*) ; 

__attribute__((used)) static void FUNC4(struct pending_request *req)
{
	if (req->ibs) {
		if (FUNC0(&req->ibs->refcount)) {
			FUNC1(req->ibs->data_size, &iso_buffer_size);
			FUNC3(req->ibs);
		}
	} else if (req->free_data) {
		FUNC3(req->data);
	}
	FUNC2(req->packet);
	FUNC3(req);
}